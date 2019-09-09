class BooksController < ApplicationController
  before_action :set_book, only: [:show,:edit,:update,:destroy]
  before_action :login_required 

  def index
    @books = Book.order('created_at DESC').page(params[:page]).per(5)
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save!
    redirect_to books_url, notice: "「#{@book.title}」を登録しました。"
  end

  def update
    @book.update!(book_params)
    redirect_to books_url, notice: "「#{@book.title}」を更新しました。"
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: "「#{@book.title}」を削除しました。"
  end

  private

  def book_params
    params.require(:book).permit(:title,:author,:genre,:status)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def login_required
    redirect_to login_path unless current_user
  end
end
