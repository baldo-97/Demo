class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, :password, presence: true
  validates_presence_of :password, :on => :create

  has_many :sales
end
