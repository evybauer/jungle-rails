require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should create a User if first_name, last_name, email, password and password_confirmation are all true' do
      @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
      @user.valid?
      expect(@user.errors).not_to include("can\'t be blank")
    end
    it 'should not create a User if last_name is missing' do
      @user = User.new(first_name: "John", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
      @user.valid?
      expect(@user.errors[:last_name]).to include("can\'t be blank")
    end
    it "should have a valid email" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
      @user.valid?
      expect(@user.errors[:email]).not_to include("can\'t be blank")
    end
    it "should have a password" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
      @user.valid?
      expect(@user.errors[:password]).not_to include("can\'t be blank")
    end
    it "should have a password confirmation" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
      @user.valid?
      expect(@user.errors[:password_confirmation]).not_to include("can\'t be blank")
    end
    it 'should not create a User if the password does not have minimum lenght' do
      @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
      @user.save!
      expect(@user.errors[:password]).to_not be_nil 
    end
    
    describe '.authenticate_with_credentials' do
      it 'should log the user if credentials are correct' do
        @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
        @user.save!
        expect(User.authenticate_with_credentials("jhon@EMAIL.com", "J@eDb3$t")).to be_present
      end
      it 'should not log the user if the email is incorrect' do
        @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
        @user.save!
        expect(User.authenticate_with_credentials("jhonDoe@EMAIL.com", "J@eDb3$t")).not_to be_present
      end
      it 'should not log the user if the password is incorrect' do
        @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
        @user.save!
        expect(User.authenticate_with_credentials("jhon@EMAIL.com", "J@eDb3$t2020")).not_to be_present
      end
      it 'should log the user even if the user types in a few spaces before and/or after their email address' do
        @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
        @user.save!
        expect(User.authenticate_with_credentials("  jhon@EMAIL.com   ", "J@eDb3$t")).to be_present
      end
      it 'should log the user even if user types in the wrong case for their email' do
        @user = User.new(first_name: "John", last_name: "Doe", email: "jhon@EMAIL.com", password: "J@eDb3$t", password_confirmation: "J@eDb3$t")
        @user.save!
        expect(User.authenticate_with_credentials("  Jhon@EMail.com   ", "J@eDb3$t")).to be_present
      end
    end
  end
end





  
