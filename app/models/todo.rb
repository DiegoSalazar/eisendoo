class Todo < ActiveRecord::Base
  belongs_to :quadrant
  belongs_to :user
end
