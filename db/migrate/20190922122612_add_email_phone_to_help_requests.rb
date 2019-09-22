class AddEmailPhoneToHelpRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :help_requests, :email, :string
    add_column :help_requests, :phone, :string
  end
end
