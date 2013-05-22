require 'digest/sha1'

class Room < ActiveRecord::Base
  attr_accessible :building_id, :claimed, :claimed_by, :number, :qr_code_path
  validates_presence_of :building_id, :number
  has_many :locations, dependent: :destroy
  has_many :users, through: :locations
  belongs_to :building

  QR_PATH = "#{Rails.root}/tmp/"

  before_save do
    self.id_hash = Digest::SHA1.hexdigest("#{self.id}#{self.created_at}#{self.number}#{self.building_id}")
    self.qr_code_path = "#{self.building_id}_#{self.number}.png"
    Qr4r::encode(self.id_hash, QR_PATH+self.qr_code_path, pixel_size: 30)
    file = File.open(QR_PATH+self.qr_code_path, 'rb')
    self.qr_data = file.read
    file.close
  end

  def as_json(options)
    super(except: [:qr_code_path, :created_at, :updated_at, :id])
  end
end
