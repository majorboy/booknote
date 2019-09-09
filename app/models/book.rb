class Book < ApplicationRecord
  enum genre: [:money, :study_method, :programming]
  enum status: [:unfinished,:finished]
  belongs_to :user
end
