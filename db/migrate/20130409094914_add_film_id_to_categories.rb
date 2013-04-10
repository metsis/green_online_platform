class AddFilmIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :film_id, :integer
  end
end
