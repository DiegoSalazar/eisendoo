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

class Priority < ActiveRecord::Base
  belongs_to :user
  serialize :quadrant_sort, Array
end
