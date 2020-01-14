class Book < ApplicationRecord
  enum status: [:unfinished,:finished]
  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :thoughts, dependent: :destroy
  belongs_to :genre, optional: true
  scope :recent, -> { order(created_at: :desc)}
  validates :title, presence: true
  
  def self.generate_csv
    column_name = ["書名", "作者", "ジャンル", "状態"]
    CSV.generate(encoding: Encoding::SJIS, row_sep: "\r\n", force_quotes: true) do |csv|
      csv << column_name
      all.each do |book|
        column_values = [
          book.title,
          book.author,
          book.genre.name,
          book.status_i18n
        ]
        csv << column_values
      end
      
    end
  end
end
