class CreatePermissionOrganizations < ActiveRecord::Migration
  def change
    create_table :permission_organizations do |t|
      t.belongs_to :permission
      t.belongs_to :organization

      t.timestamps
    end
  end
end
