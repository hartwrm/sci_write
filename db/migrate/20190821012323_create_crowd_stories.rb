class CreateCrowdStories < ActiveRecord::Migration[6.0]
  def change
    create_table :crowd_stories do |t|
      t.string :content

      t.timestamps
    end
  end
end
