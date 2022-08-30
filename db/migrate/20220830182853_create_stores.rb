class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.integer :type
      t.integer :date
      t.float :value
      t.integer :cpf
      t.integer :card
      t.integer :time
      t.string :owner
      t.string :name

      t.timestamps
    end
  end
end
