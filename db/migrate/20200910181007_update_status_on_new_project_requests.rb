class UpdateStatusOnNewProjectRequests < ActiveRecord::Migration[6.0]
  def change
    execute <<-SQL
      CREATE TYPE request_status AS ENUM ('pending', 'counteroffer', 'accepted', 'declined');
    SQL
    remove_column :new_project_requests, :status
    add_column :new_project_requests, :status, :request_status
    add_index :new_project_requests, :status
  end
end
