class ChangeCardToString < ActiveRecord::Migration[6.1]
  def up
    change_column :transactions, :card, :string
  end
end
