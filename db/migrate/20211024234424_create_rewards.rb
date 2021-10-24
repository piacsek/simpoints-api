class CreateRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :rewards do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :cost, null: false, default: 0

      t.timestamps
    end
  end
end
