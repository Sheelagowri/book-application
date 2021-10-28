class BooksController < ApplicationController
  def index
    @books = Book.includes(:category).all
    params[:category_id] && @books = @books.where(category_id: params[:category_id])
  end

  def show
    @book = Book.find(params[:id])
  end
end
