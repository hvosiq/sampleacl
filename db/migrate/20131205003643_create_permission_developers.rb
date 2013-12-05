class CreatePermissionDevelopers < ActiveRecord::Migration
  def change
    create_table :permission_developers do |t|
      t.belongs_to :permission
      t.belongs_to :developer
      t.timestamps
    end
  end
end
