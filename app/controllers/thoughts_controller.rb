class ThoughtsController < ApplicationController
  before_action :set_book
  before_action :set_thought, except: [:new,:create]

  def new
    @thought = Thought.new
  end

  def edit
  end

  def create
    Thought.create(create_params)
    redirect_to book_path(@book)
  end

  def update
    if @thought.update(create_params)
      redirect_to book_path(@book)
    else 
      render :edit
    end
  end

  def destroy
    @thought.destroy
    redirect_to book_path(@book)
  end

  private
  def create_params
    params.require(:thought).permit(:thought).merge(book_id: params[:book_id])
  end

  def set_book
    @book = Book.find(params[:book_id])
  end

  def set_thought
    @thought = Thought.find(params[:id])
  end
end
