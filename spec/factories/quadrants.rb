# == Schema Information
#
# Table name: quadrants
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  context_id :integer
#  number     :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :quadrant do
    user nil
context nil
number 1
name "MyString"
  end

end
