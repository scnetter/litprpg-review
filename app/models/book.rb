class Book < ApplicationRecord

  def self.available_now
    where("publish_date < ?", Time.now)
  end
end
