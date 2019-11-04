class Thought < ApplicationRecord
  belongs_to :book
  scope :recent, -> { order(created_at: :desc)}
end
