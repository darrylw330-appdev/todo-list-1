# == Schema Information
#
# Table name: users
#
#  id :integer          not null, primary key
#
class User < ApplicationRecord
  has_many :todos
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
end
