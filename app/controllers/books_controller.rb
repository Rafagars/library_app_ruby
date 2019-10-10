class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.paginate(page: params[:page])
  end

  def create
    @book = Book.new(book_params)
    @book.save
    flash[:success] = "Book added"
    redirect_to root_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update

    flash[:success] = "Book edited"

    redirect_to root_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:success] = "Book deleted"
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
end
