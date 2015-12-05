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

class Quadrant < ActiveRecord::Base
  belongs_to :user
  belongs_to :context
  has_many :todos
  acts_as_votable 
end
