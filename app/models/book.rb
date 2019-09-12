class Book < ApplicationRecord
  enum genre: [:money, :study_method, :programming,:business,:liberal_arts]
  enum status: [:unfinished,:finished]
  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :thoughts, dependent: :destroy

  scope :recent, -> { order(created_at: :desc)}

  def self.csv_attributes
    ["title", "author", "genre", "status"]
  end

  def self.generate_csv
    CSV.generate(headers: true) do |csv|
      csv << csv_attributes
      all.each do |book|
        csv << csv_attributes.map{ |attr| book.send(attr)}
      end
    end
  end
end
