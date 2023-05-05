# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#
class User < ApplicationRecord
  has_secure_password
  has_many :todos
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
end
