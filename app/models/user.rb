# frozen_string_literal: true

class User < ApplicationRecord
  PREFERRED_LANGUAGE = %w[Ruby Python Java JavaScript C# C++ HTML CSS Go].freeze

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :username,
            length: { minimum: 2, maximum: 50, too_short: 'Please add more than 1 character.' }

  validates_presence_of :first_name, :last_name, :username, :email, :preferred_language
end
