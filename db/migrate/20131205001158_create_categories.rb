class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :null => false
      t.boolean :allow_multiple, :default => true
      t.timestamps
    end
  end
end
