class CreateExhibitorCategories < ActiveRecord::Migration
  def self.up
    create_table :exhibitor_categories do |t|
      t.string :name

      t.timestamps
    end
  end
  def self.down
    drop_table :exhibitor_categories
  end
end
