class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @book_new = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
end
