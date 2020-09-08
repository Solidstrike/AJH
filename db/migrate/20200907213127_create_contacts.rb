class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :telephone
      t.string :subject
      t.string :comment

      t.timestamps
    end
  end
end
