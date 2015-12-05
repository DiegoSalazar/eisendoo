# == Schema Information
#
# Table name: contexts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  main       :boolean
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :context do
    name "MyString"
main false
  end

end
