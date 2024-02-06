class BooksController < ApplicationController
  before_action :find_book, except: [:index, :new, :create]
  
  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

  private
  def find_book
    @book = Book.find(params[:id])
  end
end
