class BooksController < ApplicationController
  before_action :find_book, except: [:index, :new, :create]

  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to @book
  end

  private
  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :publish_date, :synopsis)
  end
end
