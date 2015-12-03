class Comment < ActiveRecord::Base
  belongs_to :todo
  belongs_to :user
  belongs_to :comment
  acts_as_votable 
end
