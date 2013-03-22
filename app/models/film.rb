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
#

class Film < ActiveRecord::Base
  # data model should include:
  # name 	:string
  # synopsis	:string
  # imdb_rating :decimal

  attr_accessible :imdb_rating, :name, :synopsis, :category, :trailer_url
  belongs_to :director

  validates :name, presence: true
end
