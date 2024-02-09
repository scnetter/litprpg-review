class Book < ApplicationRecord
  RATINGS = %w(1 2 3 4 5)

  validates :title, :author, :publish_date, presence: true
  validates :synopsis, length: { minimum: 25 }
  validates :rating, inclusion: { in: RATINGS }
  validates :cover_img, format: {
    with: /http:\/\/.+\.(jpg|png|gif)/,
    message: "must be a valid URL"
  }

  def self.available_now
    where("publish_date < ?", Time.now)
  end
end
