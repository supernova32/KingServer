require 'digest/sha1'
require 'rqrcode_png'

class Room < ActiveRecord::Base
  attr_accessible :building_id, :claimed, :claimed_by, :number, :qr_code_path
  validates_presence_of :building_id, :number
  has_many :locations, dependent: :destroy
  has_many :users, through: :locations
  belongs_to :building

  before_save do
    self.id_hash = Digest::SHA1.hexdigest("#{self.created_at}#{self.number}#{self.building_id}")
    self.qr_code_path = "#{self.building_id}_#{self.number}.png"
    qr = RQRCode::QRCode.new(self.id_hash, size: 4, level: :m)
    png = qr.to_img
    self.qr_data = png.resize(400, 400).to_s
  end

  def as_json(options)
    super(except: [:qr_code_path, :created_at, :updated_at, :id])
  end
end
