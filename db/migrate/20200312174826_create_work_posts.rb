class CreateWorkPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :work_posts do |t|
      t.string :information
      t.string :image
      t.belongs_to :user_work
      t.timestamps
    end
  end
end
