class GetRidOfImageTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :image_posts
  end
end
