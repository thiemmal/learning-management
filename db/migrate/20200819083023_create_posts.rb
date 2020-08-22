class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :subject, null: false
      t.text :content
      t.string :image
      t.integer :study_time
      t.datetime :start_time

      t.timestamps
    end
  end
end
