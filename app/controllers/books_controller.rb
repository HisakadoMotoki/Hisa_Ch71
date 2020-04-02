class BooksController < ApplicationController
before_action :set_book, only: [:edit, :update, :show, :destroy] 

  def index
  	@books = Book.all
  end

  def new
  	@book = Book.new
  end
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.board_id = current_board.id
    @book.board
    if @book.save
    	redirect_to book_path(@book)
	else
		render 'new'
	end
  end


  def edit
  end

  def update
  	if @book.update(book_params)
  		flash[:success] = "book was UPDATED"
  		redirect_to root_path
  	else
  		render 'edit'
    end
  end
  def destroy
  	@book.destroy
  	flash[:danger]  = "book was deleted"
  	redirect_to root_path
  end

  def show
  end

  private

  def book_params
  	params.require(:book).permit(:title)
  end

  def set_book
  	@book = Book.find(params[:id])
  end

end
