class CreateNewProjectRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :new_project_requests do |t|
      t.integer :status

      t.timestamps
    end
  end
end
