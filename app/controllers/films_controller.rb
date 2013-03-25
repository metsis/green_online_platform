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

  def index
    @films = Film.all
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
      if @film.update_attributes(params[:film])
         redirect_to :action => 'show', :id => @film
      else
         render :action => 'edit'
      end
  end

end
