class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.string :synopsis
      t.decimal :imdb_rating

      t.timestamps
    end
  end
end
