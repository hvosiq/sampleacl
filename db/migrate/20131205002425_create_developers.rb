class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.integer :organization_id
      t.timestamps
    end
  end
end
