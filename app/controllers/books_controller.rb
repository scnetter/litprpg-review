class BooksController < ApplicationController
  def index
    @books = ["The Way of the Shaman", "Falling with Folded Wings", "Summoner Rising"]
  end
end
