require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
  it "should not have a current_user in the first stage" do
    get 'index'

    expect(subject.current_user).to eq(nil)
  end

  it "should devise work" do
    get 'index'

    sign_in User.create(email: "test@123.com", password: "password")
    expect(subject.current_user).to_not eq(nil)
    sign_out :user
    expect(subject.current_user).to eq(nil)
  end
end

