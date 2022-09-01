class Transaction < ApplicationRecord
  belongs_to :owners, class_name: 'Owner', optional: true

  validates :kind, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :date, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :cpf, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :time, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :owner, presence: true
  validates :name, presence: true
end
