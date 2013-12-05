class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name, :null => false
      t.integer :category_id, :null => false
      t.integer :service_id
      t.integer :developer_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
