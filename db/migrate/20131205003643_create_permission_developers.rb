class CreatePermissionDevelopers < ActiveRecord::Migration
  def change
    create_table :permission_developers do |t|
      t.integer :permission_id, :null => false
      t.integer :developer_id, :null => false

      t.timestamps
    end
  end
end
