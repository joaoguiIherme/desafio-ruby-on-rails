class MoveCpfToBigint < ActiveRecord::Migration[6.1]
  def up
    change_column :transactions, :cpf, :bigint
  end
end
