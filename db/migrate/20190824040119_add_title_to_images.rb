class AddTitleToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :image_posts, :title, :string
  end
end
