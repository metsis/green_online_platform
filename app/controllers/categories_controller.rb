class CategoriesController < ApplicationController

	def new
		@category = Category.new(:parent_id => params[:parent_id])
	end

	def show
		@category = Category.find(params[:id])
	end

	def index
		@categories = Category.where("name like?", "%#{params[:q]}%")
		@category = Category.new

		respond_to do |format|
			format.html
			format.json { render :json => @categories.map(&:attributes) }
		end
	end

	def create
		@category = Category.new(params[:category])
		if @category.save
			flash[:success] = "Category added successfully!"
			redirect_to categories_url
		else
			render 'new'
		end
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to categories_url
	end

end
