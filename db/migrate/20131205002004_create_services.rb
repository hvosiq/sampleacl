class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, :null => false
      t.belongs_to :permission
      t.timestamps
    end
  end
end
