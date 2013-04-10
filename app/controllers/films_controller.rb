class FilmsController < ApplicationController
  def new
  	@film = Film.new
    @directors = Director.all    
  end

  def create
  	@film = Film.new(params[:film])
    @director = @film.director
    if @film.save
      @director.films << @film
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
#    @films = Film.all
    @films = Film.paginate(:page => params[:page], :per_page => 8)
    @categories = Category.all
  end

  def edit
    @film = Film.find(params[:id])
    @directors = Director.all
  end

  def update
    @film = Film.find(params[:id])
    @director = @film.director
      if @film.update_attributes(params[:film])
          @director.films << @film
         redirect_to :action => 'show', :id => @film
      else
         render :action => 'edit'
      end
  end

end
