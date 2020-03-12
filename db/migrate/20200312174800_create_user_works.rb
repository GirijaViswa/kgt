class CreateUserWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_works do |t|
      t.belongs_to :user
      t.belongs_to :video
      t.timestamps
    end
  end
end
