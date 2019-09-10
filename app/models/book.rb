class Book < ApplicationRecord
  enum genre: [:money, :study_method, :programming]
  enum status: [:unfinished,:finished]
  belongs_to :user
  has_one :note, dependent: :destroy
end
