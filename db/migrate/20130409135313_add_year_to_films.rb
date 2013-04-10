class AddYearToFilms < ActiveRecord::Migration
  def change
    add_column :films, :year, :integer
  end
end
