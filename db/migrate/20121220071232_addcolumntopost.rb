class Addcolumntopost < ActiveRecord::Migration
  def up
  	add_column :post1s, :category, :string
  end

  def down
  	remove_column :post1s, :category
  end
end
