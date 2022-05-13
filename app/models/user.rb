class User < ApplicationRecord
  validates :name, presence: true
  validates :username, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  paginates_per 10
end
