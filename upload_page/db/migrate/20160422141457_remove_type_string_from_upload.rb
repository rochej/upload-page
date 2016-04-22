class RemoveTypeStringFromUpload < ActiveRecord::Migration
  def change
    remove_column :uploads, :type
  end
end
