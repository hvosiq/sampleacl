class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name , null: false
      t.belongs_to :organization
      t.timestamps
    end
  end
end
