class BooksController < ApplicationController
  
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
  
  def menu_edit
    @books = Book.all
    @book = Book.find(params[:book_id])
    # redirect_to book_path(@book)
    render :menu_edit
  end

  def update

  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to book_path(book)
  end
end

private

def book_params
    params.require(:book).permit(:title, :content)
end