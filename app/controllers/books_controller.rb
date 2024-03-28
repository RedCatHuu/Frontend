class BooksController < ApplicationController
  
  def show
    @books = Book.all
    @book = Book.find(params[:id])
  end

  def create
    @books = Book.all
    newBook = Book.new(title: "タイトル", content: "コンテンツ")
    newBook.save
    render :'books/menu_edit'
  end
  
  def menu
    @books = Book.all
    render :'books/menu'
  end
  
  def menu_edit
    @books = Book.all
    render :'books/menu_edit'
  end

  def update
    which = params[:book].delete(:which)
    @books = Book.all
    @book = Book.find(params[:id])
    @book.update(book_params)
    if which == "title"
      render :'books/main_title'
    else
      render :'books/main_content'
    end
  end

  def destroy
    @books = Book.all
    book = Book.find(params[:id])
    book.destroy
    render :'books/menu_edit'
  end
  
  def main
    which = params[:which]
    @book = Book.find(params[:book_id])
    @books = Book.all
    if which == "title"
      render :'books/main_title'
    elsif which == "content"
      render :'books/main_content'
    else
      render :'books/main'
    end
  end 
  
  def main_edit
    @book = Book.find(params[:book_id])
    which = params[:which]
    if which == "title"
      render :'books/main_title_edit'
    else
      render :'books/main_content_edit'
    end 
  end
  
end

private

def book_params
    params.require(:book).permit(:title, :content)
end