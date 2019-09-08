class Book < ApplicationRecord
  enum genre: [:money, :study_method, :programming]
  enum status: [:unfinished,:finished]
end
