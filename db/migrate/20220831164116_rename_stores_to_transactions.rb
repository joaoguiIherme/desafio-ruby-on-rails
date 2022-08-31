class RenameStoresToTransactions < ActiveRecord::Migration[6.1]
  def self.up
    rename_table :stores, :transactions
  end

  def self.down
    rename_table :transactions, :store
  end
end
