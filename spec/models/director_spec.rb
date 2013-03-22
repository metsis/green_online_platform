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

require 'spec_helper'

describe Director do
  pending "add some examples to (or delete) #{__FILE__}"
end
