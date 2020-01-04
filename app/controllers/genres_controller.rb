class GenresController < ApplicationController
  def index 
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
  
  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
