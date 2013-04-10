class AddCategoriesToFilms < ActiveRecord::Migration
  def change
		add_foreign_key :categories, :films 
  end
end