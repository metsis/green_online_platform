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
#

class Film < ActiveRecord::Base
  attr_accessible :imdb_rating, :name, :synopsis

  validates :name, presence: true
end
