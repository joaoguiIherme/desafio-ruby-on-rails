class RenameTypeToKind < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :transactions, :type, :kind
  end

  def self.down
    rename_column :transactions, :kind, :type
  end
end
