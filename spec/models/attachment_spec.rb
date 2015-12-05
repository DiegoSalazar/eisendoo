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

require 'rails_helper'

RSpec.describe Attachment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
