require 'rails_helper'

RSpec.describe Owner, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'is valid' do
    it 'with valid attributes' do
      owner = build(:owner)
      expect(owner).to be_valid
    end
  end

  describe 'is not valid' do
    it 'without a name' do
      owner = build(:owner, name: nil)
      expect(owner).to_not be_valid
    end
  end
end
