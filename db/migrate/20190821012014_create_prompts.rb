class CreatePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :prompts do |t|
      t.string :writing_prompt

      t.timestamps
    end
  end
end
