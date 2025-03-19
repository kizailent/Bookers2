class BooksController < ApplicationController
  def index
    @books = Book.all
    @book_new = Book.new
    @user = current_user
  end

  def show
  end

  def edit
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    if book.save
      redirect_to book_path(book.id)
    else
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
