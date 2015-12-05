# == Schema Information
#
# Table name: priorities
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  quadrant_sort :string(255)
#  active        :boolean
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

FactoryGirl.define do
  factory :priority do
    name "MyString"
quadrant_sort "MyString"
active false
user nil
  end

end
