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
  
  def menu
    @books = Book.all
    render :'books/menu'
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
  
  def main
    @book = Book.find(params[:book_id])
    render :'books/main'
  end 
  
  def main_title_edit
    @book = Book.find(params[:book_id])
    render :'books/main_title_edit'
  end
  
  def main_content_edit
    @book = Book.find(params[:book_id])
    render :'books/main_content_edit'
  end
  
  
end

private

def book_params
    params.require(:book).permit(:title, :content)
end