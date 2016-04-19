class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.references :user
      t.string :filename
      t.boolean :status
      t.string :type
      t.timestamps null: false
    end
  end
end
