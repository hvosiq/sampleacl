class CreatePermissionOrganizations < ActiveRecord::Migration
  def change
    create_table :permission_organizations do |t|
      t.integer :permission_id  , :null => false
      t.integer :organization_id , :null => false

      t.timestamps
    end
  end
end
