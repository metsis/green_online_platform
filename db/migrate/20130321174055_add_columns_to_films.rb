class AddColumnsToFilms < ActiveRecord::Migration
  def change
  		add_column :films, :trailer_url, :string
  end
end
