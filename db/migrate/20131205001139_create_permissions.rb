class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name, :null => false
      t.belongs_to :category
      t.belongs_to :service
      t.belongs_to :developer
      t.belongs_to :organization

      t.timestamps
    end
  end
end
