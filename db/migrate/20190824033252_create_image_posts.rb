class CreateImagePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :image_posts do |t|
      t.string :image

      t.timestamps
    end
  end
end
