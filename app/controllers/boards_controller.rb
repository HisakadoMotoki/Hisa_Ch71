class BoardsController < ApplicationController
before_action :set_board, only: [:edit, :update, :show, :destroy] 

  def index
  	@boards = Board.all
  end

  def new
  	@board = Board.new
  end
  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to root_path
  end


  def edit
  end

  def update
  	if @board.update(board_params)
  		flash[:success] = "board was UPDATED"
  		redirect_to root_path
  	else
  		render 'edit'
    end
  end
  def destroy
  	@board.destroy
  	flash[:danger]  = "board was deleted"
  	redirect_to root_path
  end

  def show
    @books = Book.all
  end

  private

  def board_params
  	params.require(:board).permit(:name)
  end

  def set_board
  	@board = Board.find(params[:id])
  end

end
