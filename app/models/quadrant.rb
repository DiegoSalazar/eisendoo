class Quadrant < ActiveRecord::Base
  belongs_to :user
  belongs_to :context
end
