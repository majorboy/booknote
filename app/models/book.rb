class Book < ApplicationRecord
  enum genre: [:money, :study_method, :paperback]
end
