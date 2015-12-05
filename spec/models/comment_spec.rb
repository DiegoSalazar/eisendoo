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

require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
