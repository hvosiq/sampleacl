class CreatePermissionServices < ActiveRecord::Migration
  def change
    create_table :permission_services do |t|
      t.belongs_to :service
      t.belongs_to :permission

      t.timestamps
    end
  end
end
