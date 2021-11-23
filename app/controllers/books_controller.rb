class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def alpha
    @books = Book.all.select { |book| book.title.start_with?(params[:alpha]) }
  end

  def show
    @book = Book.find(params[:id])
  end
end
