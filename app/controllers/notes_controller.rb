class NotesController < ApplicationController
  before_action :set_book
  before_action :set_note, except: [:new,:create]

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    Note.create(create_params)
    redirect_to book_path(@book)
  end

  def update
    if @note.update(create_params)
      redirect_to book_path(@book)
    else 
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to book_path(@book)
  end

  private
  def create_params
    params.require(:note).permit(:content).merge(book_id: params[:book_id])
  end

  def set_book
    @book = Book.find(params[:book_id])
  end

  def set_note
    @note = Note.find(params[:id])
  end

end
