# == Schema Information
#
# Table name: quadrants
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  context_id :integer
#  number     :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Quadrant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
