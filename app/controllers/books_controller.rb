class BooksController < ApplicationController
  before_action :find_book, except: [:index, :new, :create, :all_books]

  def index
    @books = Book.available_now
  end

  def all_books
    @books = Book.all
    render "index"
  end

  def show
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to @book
  end

  def new
    @book = Book.new
  end

  def create
    if @book = Book.create(book_params)
      redirect_to @book
    else
      render :new
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, status: :see_other
  end


  private
  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :publish_date, :synopsis, :cover_img)
  end
end
