class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :admin, :study_course_id
  validates_presence_of :name, :email
  belongs_to :study_course
  has_many :locations, dependent: :destroy
  has_many :rooms, through: :locations
  has_many :checked_locations
  has_many :hidden_locations, through: :checked_locations
end
