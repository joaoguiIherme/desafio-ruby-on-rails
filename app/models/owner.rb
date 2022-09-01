class Owner < ApplicationRecord
  has_many :transactions

  validates :name, presence: true

  def balance
    profit - expense
  end

  def profit
    transactions = Transaction.where('owner_id = ?', id).where.not(kind: [2, 3, 9])
    transactions.map(&:value).inject(0, &:+)
  end

  def expense
    transactions = Transaction.where('owner_id = ?', id).where(kind: [2, 3, 9])
    transactions.map(&:value).inject(0, &:+)
  end
end
