# frozen_string_literal: true

class User < ApplicationRecord
  validates :user_name, uniqueness: true 
  validates :email, uniqueness: true 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
