class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
