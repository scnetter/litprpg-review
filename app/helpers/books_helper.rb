module BooksHelper

  def year_of(book)
    book.publish_date.year
  end
end
