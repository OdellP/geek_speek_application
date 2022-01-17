# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Length Validations' do
    it { is_expected.to validate_length_of(:first_name).is_at_least(2).with_message('Please add more than 1 character.') }
    it { is_expected.to validate_length_of(:first_name).is_at_most(50) }
    it { is_expected.to validate_length_of(:last_name).is_at_least(2).with_message('Please add more than 1 character.') }
    it { is_expected.to validate_length_of(:last_name).is_at_most(50) }
    it { is_expected.to validate_length_of(:username).is_at_least(2).with_message('Please add more than 1 character.') }
    it { is_expected.to validate_length_of(:username).is_at_most(50) }
  end

  describe 'Presence Validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:preferred_language) }
  end

  describe 'Constants' do
    it 'has a PREFERRED_LANGUAGE constant' do
      expect(described_class::PREFERRED_LANGUAGE).not_to be_nil
    end
  end
end
