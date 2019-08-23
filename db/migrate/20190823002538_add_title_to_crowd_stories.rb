class AddTitleToCrowdStories < ActiveRecord::Migration[6.0]
  def change
    add_column :crowd_stories, :title, :string
  end
end
