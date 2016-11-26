class BooksController < ApplicationController
  
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  
  def index
    @books = Book.all
  end
  
  def show
    # set_bookにまとめたため消す@book = Book.find(params[:id])
  end
  
  def new 
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end
  
  def edit
    # set_bookにまとめたため消す@book = Book.find(params[:id])
  end
  
  def update
    # set_bookにまとめたため消す@book = Book.find(params[:id])
    @book.update(book_params)
    
    # redirect_to book_path
    redirect_to book_path(@book)
  end
  
  def destroy
    # set_bookにまとめたため消す@book = Book.find(params[:id])
    @book.destroy
    
    redirect_to books_path
  end
  

  private

  def set_book
    @book = Book.find(params[:id])
  end
  # Strong Parameters
  def book_params
    params.require(:book).permit(:name,:price,:publish,:publish_date)
  end
end
