class ChangeColumnNameInStories < ActiveRecord::Migration[6.0]
  def change
    rename_column :crowd_stories, :content, :story
  end
end
