class Api::BooksController < ApplicationController
  def update
    # find the correct book
    @book = Book.find_by(id: params[:id])
    # change that book in the db
    @book.name = params[:name]
    @book.pages = params[:pages]
    @book.save
    render 'show.json.jb'
  end
end
