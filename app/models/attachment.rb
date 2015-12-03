class Attachment < ActiveRecord::Base
  belongs_to :todo
  belongs_to :comment
end
