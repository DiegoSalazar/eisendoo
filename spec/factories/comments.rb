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

FactoryGirl.define do
  factory :comment do
    todo nil
user nil
comment nil
body "MyText"
  end

end
