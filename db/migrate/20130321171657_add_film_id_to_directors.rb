class AddFilmIdToDirectors < ActiveRecord::Migration
  def change
    add_column :directors, :film_id, :integer
  end
end
