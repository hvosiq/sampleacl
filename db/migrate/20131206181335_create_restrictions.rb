class CreateRestrictions < ActiveRecord::Migration
  def change
    create_table :restrictions do |t|
      t.belongs_to :permission
      t.timestamps
    end

    create_table :developers_restrictions do |t|
      t.belongs_to :restriction
      t.belongs_to :developer
    end

    create_table :organizations_restrictions do |t|
      t.belongs_to :restriction
      t.belongs_to :organization
    end
  end
end
