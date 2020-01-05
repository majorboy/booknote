class GenresController < ApplicationController
  before_action :set_genre, only: [:edit,:update,:destroy]
  def index 
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def edit
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_url, notice: "ジャンル「#{@genre.name}」を登録しました。"
    else
      render :new
    end
  end

  def update
    if @genre.update(genre_params)
      redirect_to genres_url, notice: "ジャンル「#{@genre.name}」を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @genre.destroy
    redirect_to genres_url, notice: "ジャンル「#{@genre.name}」を削除しました。"
  end
  
  private
  def genre_params
    params.require(:genre).permit(:name)
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end
end
