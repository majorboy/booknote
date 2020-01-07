class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true

  has_many :books, dependent: :destroy
  has_many :genres, dependent: :destroy
end
