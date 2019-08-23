class ChangeStoryToText < ActiveRecord::Migration[6.0]
  def change
    change_column :crowd_stories, :story, :text
  end
end
