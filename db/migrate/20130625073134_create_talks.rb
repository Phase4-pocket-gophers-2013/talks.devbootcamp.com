class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.text :content, :youtube_url
      t.integer :user_id

      t.timestamps
    end
  end
end
