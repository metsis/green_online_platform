class AddFilmstoDirectors < ActiveRecord::Migration
	def change
		add_foreign_key :directors, :films 
		add_foreign_key :films, :directors
	end
end
