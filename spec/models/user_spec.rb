require 'spec_helper'

describe User do
  describe '#name' do
    context 'when the user only has an email' do
      it 'is the email' do
        user = User.new(email: 'spiderman@example.com')
        expect(user.name).to eq('spiderman@example.com')
      end
    end

    context 'when the user has a first name and a last name' do
      it 'is the names with a space between them' do
        user = User.new(
          first_name: 'Peter',
          last_name: 'Parker',
        )
        expect(user.name).to eq('Peter Parker')
      end
    end

    context 'when there is only a first name' do
      it 'is that name' do
        user = User.new(first_name: 'Peter')
        expect(user.name).to eq('Peter')
      end
    end

    context 'when there is only a last name' do
      it 'is that name' do
        user = User.new(last_name: 'Parker')
        expect(user.name).to eq('Parker')
      end
    end
  end
end
