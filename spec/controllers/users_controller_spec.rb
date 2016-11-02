require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    before do
      get :new
    end

    it "returns 200" do
      expect(response.status).to eq 200
    end

    it "assigns a user object" do
      expect(assigns(:user)).to be_a User
    end
  end

  describe "POST #create" do
    it "returns 302" do
      post :create, user: {
        first_name: "Billy",
        last_name: "Bob",
        username: "testing",
        email: "test@email.com",
        password: "123",
        password_confirmation: "123"
      }
      expect(response.status).to eq 302
    end
  end
end
