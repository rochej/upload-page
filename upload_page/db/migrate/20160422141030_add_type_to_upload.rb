class AddTypeToUpload < ActiveRecord::Migration
  def change
    add_reference :uploads, :type
  end
end
