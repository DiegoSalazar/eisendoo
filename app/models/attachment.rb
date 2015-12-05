# == Schema Information
#
# Table name: attachments
#
#  id                      :integer          not null, primary key
#  todo_id                 :integer
#  comment_id              :integer
#  attachment_file_name    :string(255)
#  attachment_file_size    :integer
#  attachment_content_type :string(255)
#  attachment_updated_at   :datetime
#  created_at              :datetime
#  updated_at              :datetime
#

class Attachment < ActiveRecord::Base
  belongs_to :todo
  belongs_to :comment
end
