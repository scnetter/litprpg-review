class Book < ApplicationRecord

  def self.available
    where("publish_date < ?", Time.now)
  end
end
