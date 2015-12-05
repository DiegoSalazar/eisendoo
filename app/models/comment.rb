# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  todo_id    :integer
#  user_id    :integer
#  comment_id :integer
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
  belongs_to :todo
  belongs_to :user
  belongs_to :comment
  acts_as_votable 
end
