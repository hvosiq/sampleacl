class CreatePermissionDevelopers < ActiveRecord::Migration
  def change
    create_table :developers_permissions do |t|
      t.belongs_to :permission
      t.belongs_to :developer
    end

    create_table :organizations_permissions do |t|
      t.belongs_to :permission
      t.belongs_to :organization
    end

    create_table :permissions_services do |t|
      t.belongs_to :service
      t.belongs_to :permission
    end
  end
end
