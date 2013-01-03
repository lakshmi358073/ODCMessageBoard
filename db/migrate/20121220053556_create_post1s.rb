class CreatePost1s < ActiveRecord::Migration
  def change
    create_table :post1s do |t|
      t.string :title
      t.text :content
     
      t.timestamps
    end
  end
end
