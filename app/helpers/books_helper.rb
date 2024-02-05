module BooksHelper

  def year_of(book)
    book.publish_date.strftime("%Y")
  end
end
