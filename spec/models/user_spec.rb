require 'rails_helper'

RSpec.describe User, type: :model do
  context "#get_facebook_user_data" do
    it "should vcr version work" do
      VCR.use_cassette 'get facebook user data' do
        expect(User.get_facebook_user_data('ACCESS_TOKEN')).to eq({
          "name" => "FB_NAME",
          "id" => "FB_ID"
        })
      end
    end
  end
end
