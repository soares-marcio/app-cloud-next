require 'rails_helper'

describe User, type: :model do
  it { should have_db_column(:name) }
  it { should have_db_column(:username) }

  it 'validates uniqueness of email' do
    create(:user, email: Faker::Internet.email)
    should validate_uniqueness_of(:email)
  end
end