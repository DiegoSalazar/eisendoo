# == Schema Information
#
# Table name: todos
#
#  id             :integer          not null, primary key
#  quadrant_id    :integer
#  user_id        :integer
#  body           :text
#  due            :datetime
#  notify         :boolean
#  recurring_rule :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

FactoryGirl.define do
  factory :todo do
    quadrant nil
user nil
body "MyText"
due "2015-12-03 03:39:17"
notify false
recurring_rule "MyString"
  end

end
