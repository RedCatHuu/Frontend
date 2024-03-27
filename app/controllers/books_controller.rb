class BooksController < ApplicationController
  def show
    @books = Book.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
