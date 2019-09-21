class BooksController < ApplicationController
  before_action :set_book, only: [:show,:edit,:update,:destroy]
  before_action :login_required 

  def index
    @q = current_user.books.ransack(params[:q])
    @books = @q.result(distinct: true).recent.page(params[:page]).per(3)

    respond_to do |format|
      format.html
      format.csv { send_data @books.generate_csv, filename: "books-#{Time.zone.now.strftime('%Y%m%d%S')}.csv"}
    end
  end

  def show
    @thoughts = @book.thoughts.page(params[:page]).per(6)
  end

  def new
  end

  def edit
  end

  def create
    @book = current_user.books.new(book_params)
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
    @book = current_user.books.find(params[:id])
  end

  def login_required
    redirect_to login_path unless current_user
  end
end
