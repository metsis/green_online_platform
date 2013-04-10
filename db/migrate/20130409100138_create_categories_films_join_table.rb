class CreateCategoriesFilmsJoinTable < ActiveRecord::Migration
	def change
    create_table :categories_films, :id => false do |t|
      t.integer :category_id
      t.integer :film_id
    end
  end
end
