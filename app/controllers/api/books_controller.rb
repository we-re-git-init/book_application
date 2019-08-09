class Api::BooksController < ApplicationController
  def show
    @book = Book.find_by(id: params[:id])
    render 'show.json.jb'
  end


  def update
    # find the correct book
    @book = Book.find_by(id: params[:id])
    # change that book in the db
    @book.name = params[:name]
    @book.pages = params[:pages]
    if @book.save
      render 'show.json.jb'
    else
      render json: {errors: @book.errors.full_messages}, status: :unprocessible_entity
    end
  end

end
