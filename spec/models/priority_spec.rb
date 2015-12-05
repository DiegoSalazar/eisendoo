# == Schema Information
#
# Table name: priorities
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  quadrant_sort :string(255)
#  active        :boolean
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'rails_helper'

RSpec.describe Priority, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
