class User < ApplicationRecord
  validates :name, presence: true
  validates :username, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
