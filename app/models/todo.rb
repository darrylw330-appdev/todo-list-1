
# == Schema Information
#
# Table name: todos
#
#  id :integer          not null, primary key
#
class Todo < ApplicationRecord
  belongs_to :user 
end
