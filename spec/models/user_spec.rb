require 'rails_helper'

RSpec.describe User, type: :model do
  it "should get_facebook_user_data work" do
    expect(User.get_facebook_user_data('access_token')).to eq('abc')
  end
end
