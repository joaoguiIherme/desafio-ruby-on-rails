class AddOwnerToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_reference :transactions, :owner, null: true, foreign_key: true
  end
end
