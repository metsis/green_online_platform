class AddCategoryIdToFilms < ActiveRecord::Migration
  def change
    add_column :films, :category_id, :integer
  end
end
