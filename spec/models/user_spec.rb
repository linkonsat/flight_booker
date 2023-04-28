# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
    context 'When creating a valid user.' do 
        it 'It accepts a new user when a email and username present.' do 
            user = build(:user, email: "bob@bob.com", user_name: "bob")
            expect(user.save).to eql(true)
        end
    end

    context 'When creating a invalid user.' do 
        it 'Rejects a user without a email.' do 
            user = build(:user, user_name: "bob")

            expect(user.save).to eql(false)
        end

        it 'Rejects a user without a username.' do 
            user = build(:user, email: "bob@bob.com")

            expect(user.save).to eql(false)
        end
    end
end
