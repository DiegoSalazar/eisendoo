# == Schema Information
#
# Table name: contexts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  main       :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Context < ActiveRecord::Base
  has_many :quadrants

  def get_main_quadrants
    quadrants.where(number: [1, 2]).order :number
  end

  def get_side_quadrants
    quadrants.where(number: [3, 4]).order :number
  end
end
