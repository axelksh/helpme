class CreateHelpRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :help_requests do |t|
      t.string :state
      t.text :comment
      t.references :task, foreign_key: true
      t.integer :performer_id
      t.integer :task_owner_id

      t.timestamps
    end
  end
end
