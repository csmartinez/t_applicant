class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :career, :presence => true
  validates :goals, :presence => true
  has_many :outfitters_users
  has_many :user_roles
end
