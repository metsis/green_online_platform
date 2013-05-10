# == Schema Information
#
# Table name: films
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  synopsis    :string(255)
#  imdb_rating :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#  trailer_url :string(255)
#  category_id :integer
#  year        :integer
#

class Film < ActiveRecord::Base
  # data model should include:
  # name 	:string
  # synopsis	:string
  # imdb_rating :decimal

  attr_accessible :imdb_rating, :name, :synopsis, :category_id, :trailer_url, :director_id, :category_tokens, :year

  # each film can belong to one or many categories
  has_and_belongs_to_many :categories 

  # TODO: change this
  # each film should be able to belong to one or many directors
  belongs_to :director

  validates :name, presence: true


  attr_reader :category_tokens

  def category_tokens=(ids)
  	self.category_ids = ids.split(",")
  end

end
