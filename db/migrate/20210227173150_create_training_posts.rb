class CreateTrainingPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :training_posts do |t|
      t.string :text, null: false
      t.timestamps
    end
  end
end
