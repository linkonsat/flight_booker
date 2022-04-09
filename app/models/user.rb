# frozen_string_literal: true

class User < ApplicationRecord
  validates: :email, uniqueness: true 
  validates: :email, uniqueness: true 
  debugger
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
