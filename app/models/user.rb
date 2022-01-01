# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :username,
            length: { minimum: 2, maximum: 50, too_short: 'Please add more than 1 character.' }

  validates_presence_of :first_name, :last_name, :username, :email
  validates_presence_of :years_of_experience, :is_admin, :preferred_language, :will_pair
end