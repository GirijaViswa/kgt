class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :url
      t.string :name
      t.string :video_type
      t.belongs_to :product
      t.timestamps
    end
  end
end
