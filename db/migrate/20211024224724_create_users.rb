class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :balance, null: false, default: 0

      t.timestamps
    end
  end
end
