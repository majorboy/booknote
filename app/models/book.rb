class Book < ApplicationRecord
  enum genre: [:money, :study_method, :programming,:business,:liberal_arts]
  enum status: [:unfinished,:finished]
  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :thoughts, dependent: :destroy
end
