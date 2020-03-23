class CreatePostThreadCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :post_thread_category_relations do |t|
      t.integer :post_thread_id
      t.integer :category_id

      t.timestamps
    end
  end
end
