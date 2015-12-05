# == Schema Information
#
# Table name: todos
#
#  id             :integer          not null, primary key
#  quadrant_id    :integer
#  user_id        :integer
#  body           :text
#  due            :datetime
#  notify         :boolean
#  recurring_rule :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'rails_helper'

RSpec.describe Todo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
