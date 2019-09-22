class AddUserReferencesToHelpRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :help_requests, :user, foreign_key: true
  end
end
