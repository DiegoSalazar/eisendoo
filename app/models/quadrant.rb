class Quadrant < ActiveRecord::Base
  belongs_to :user
  belongs_to :context
  has_many :todos
  acts_as_votable 
end
