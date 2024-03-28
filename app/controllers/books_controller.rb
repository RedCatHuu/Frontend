class BooksController < ApplicationController
  
  def show
    @books = Book.all
    @book = Book.find(params[:id])
  end

  def create
    @books = Book.all
    # book = Book.find(params[:book_id])
    newBook = Book.new(title: "タイトル", content: "コンテンツ")
    newBook.save
    # redirect_to book_path(book)
    render :'books/menu_edit'
  end
  
  def edit
    @books = Book.all
    @book = Book.find(params[:id])
  end
  
  def menu_edit
    @books = Book.all
    # @book = Book.find(params[:book_id])
    # redirect_to book_path(@book)
    render :'books/menu_edit'
  end

  def update

  end

  def destroy
    @books = Book.all
    book = Book.find(params[:id])
    book.destroy
    # redirect_to book_path(book)
    render :'books/menu_edit'
  end
end

private

def book_params
    params.require(:book).permit(:title, :content)
end