require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:kind) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:value) }
    it { should validate_presence_of(:cpf) }
    it { should validate_presence_of(:time) }
    it { should validate_presence_of(:owner) }
    it { should validate_presence_of(:name) }
  end

  describe 'is valid' do
    it 'with valid attributes' do
      transaction = build(:transaction)
      expect(transaction).to be_valid
    end
  end

  describe 'is not valid' do
    it 'without a kind' do
      transaction = build(:transaction, kind: nil)
      expect(transaction).to_not be_valid
    end

    it 'without a date' do
      transaction = build(:transaction, date: nil)
      expect(transaction).to_not be_valid
    end

    it 'without a value' do
      transaction = build(:transaction, value: nil)
      expect(transaction).to_not be_valid
    end

    it 'without a cpf' do
      transaction = build(:transaction, cpf: nil)
      expect(transaction).to_not be_valid
    end

    it 'without a time' do
      transaction = build(:transaction, time: nil)
      expect(transaction).to_not be_valid
    end

    it 'without a owner' do
      transaction = build(:transaction, owner: nil)
      expect(transaction).to_not be_valid
    end

    it 'without a name' do
      transaction = build(:transaction, name: nil)
      expect(transaction).to_not be_valid
    end
  end
end
