class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @user = User.find(params[:user_id])
    @book = @user.books.build(book_params)
    if @book.save
      flash[:success] = "Book added"
      redirect_to root_path
    else
      flash[:danger] = "Error adding your book. Please try again or report the error to us"
      redirect_to root_path
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @book = @user.books.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @book = @user.books.find(params[:id])
    @book.update(book_params)

    flash[:success] = "Book edited"

    redirect_to root_path
  end

  def destroy
    @user = User.find(params[:user_id])
    @book = @user.books.find(params[:id])
    @book.destroy
    flash[:success] = "Book deleted"
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end

end
