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

require 'spec_helper'

describe Film do

  before { @film = Film.new(name: "Example Film", synopsis: "Something happens") }

  subject { @film }

  it { should respond_to(:name) }
  it { should respond_to(:synopsis) }

  it { should be_valid }

  describe "when name is not present" do
    before { @film.name = " " }
    it { should_not be_valid }
  end


end

