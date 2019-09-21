class Book < ApplicationRecord
  enum genre: [:money, :study_method, :programming,:business,:liberal_arts]
  enum status: [:unfinished,:finished]
  belongs_to :user
  has_many :notes, dependent: :destroy
  has_many :thoughts, dependent: :destroy

  scope :recent, -> { order(created_at: :desc)}
  
  def self.csv_attributes
    
  end

  def self.generate_csv
    column_name = ["書名", "作者", "ジャンル", "状態"]
    CSV.generate(encoding: Encoding::SJIS, row_sep: "\r\n", force_quotes: true) do |csv|
      csv << column_name
      all.each do |book|
        column_values = [
          book.title,
          book.author,
          book.genre_i18n,
          book.status_i18n
        ]
        csv << column_values
      end
      
    end
  end
end
