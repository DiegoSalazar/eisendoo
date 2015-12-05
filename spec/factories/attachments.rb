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

FactoryGirl.define do
  factory :attachment do
    todo nil
comment nil
attachment_file_name "MyString"
attachment_file_size 1
attachment_content_type "MyString"
attachment_updated_at "2015-12-03 03:39:19"
  end

end
