class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end 
  
  def show
    @books = Book.all
    @book = Book.find(params[:id])
  end

  def create
  end
  
  def edit
    @books = Book.all
    @book = Book.find(params[:id])
  end

  def update

  end

  def destroy
  end
end
