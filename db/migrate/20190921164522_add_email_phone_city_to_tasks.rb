class AddEmailPhoneCityToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :email, :string
    add_column :tasks, :phone, :string
    add_column :tasks, :city, :string
  end
end
