class DirectorsController < ApplicationController

def new
	@director = Director.new
end

def edit
	@director = Director.find(params[:id])
end

def update
	@director = Director.find(params[:id])
	if @director.update_attributes(params[:director])
		redirect_to :action => 'show', :id => @director
	else
		render :action => 'edit'
	end
end

def create
 	@director = Director.new(params[:director])
    if @director.save
      flash[:success] = "Director added successfully!"
    	redirect_to @director
    else
      render 'new'
    end
end


def show
	@director = Director.find(params[:id])
	@films = Film.where(:director_id => @director.id)
end

end
