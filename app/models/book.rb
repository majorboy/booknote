class Book < ApplicationRecord
  enum genre: [:money, :study_method, :paperback]
  enum status: [:unfinished,:finished]
end
