class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.belongs_to :user
      t.string :title
      t.text :descr

      t.timestamps
    end
  end
end
