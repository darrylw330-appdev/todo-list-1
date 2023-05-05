
# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  content    :text
#  status     :string
#  created_at :datetime
#  user_id    :integer
#
class Todo < ApplicationRecord
  belongs_to :user 
  def status
end
