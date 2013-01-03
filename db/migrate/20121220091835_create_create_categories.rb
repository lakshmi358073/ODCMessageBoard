class CreateCreateCategories < ActiveRecord::Migration
  def change
    create_table :create_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
