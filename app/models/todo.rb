class Todo < ActiveRecord::Base
  belongs_to :quadrant
  belongs_to :user
  has_many :attachments
end
