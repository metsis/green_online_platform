# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ancestry    :string(255)
#  description :string(255)
#  film_id     :integer
#

class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id, :parent, :description
	
  has_ancestry

  # each category is related to a number of films
  has_and_belongs_to_many :films	

end
