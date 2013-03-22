# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  film_id    :integer
#

class Director < ActiveRecord::Base
  attr_accessible :name, :films

  has_many :films
end
