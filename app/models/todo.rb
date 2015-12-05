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

class Todo < ActiveRecord::Base
  belongs_to :quadrant
  belongs_to :user
  has_many :attachments
  has_many :comments
  acts_as_votable 
end
