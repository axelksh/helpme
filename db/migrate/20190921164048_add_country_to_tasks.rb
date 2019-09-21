class AddCountryToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :country, foreign_key: true
  end
end
