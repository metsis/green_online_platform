class FilmsController < ApplicationController
  def new
  	@film = Film.new
  end

  def create
  	@film = Film.new(params[:film])
    if @film.save
      flash[:success] = "Film added successfully!"
    	redirect_to @film
    else
      render 'new'
    end
  end

  def show
  	@film = Film.find(params[:id])
  end
end
