class AddColumnPostComments < ActiveRecord::Migration[5.2]
  def up
  	add_column :post_comments, :image_id, :string
  end
end
