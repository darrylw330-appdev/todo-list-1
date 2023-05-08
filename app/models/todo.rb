
# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  content    :text
#  status     :string
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#
class Todo < ApplicationRecord
  attribute :created_at, :datetime, default: -> { Time.now }
  belongs_to :user 
end
