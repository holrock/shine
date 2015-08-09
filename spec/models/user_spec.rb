require 'rails_helper'
require 'support/violate_check_constraint_matcher'

describe User do
  describe 'email' do
    let(:user) {
      User.create!(email: 'foo@example.com',
                   password: 'qwertasdfzxcv',
                   password_confirmation: 'qwertasdfzxcv')
    }

    it 'absolutely prevents invalid email address' do
      expect {
        user.update_attribute(:email, "foo@hoge.com")
      }.to violate_check_constraint(:email_must_be_comany_email)
    end
  end
end
