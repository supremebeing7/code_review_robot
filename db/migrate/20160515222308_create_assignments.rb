class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :repo_url
      t.datetime :due_date
      t.integer :user_id
      t.boolean :reviewed

      t.timestamps
    end
    add_index :assignments, :due_date
    add_index :assignments, :user_id
    add_index :assignments, :reviewed
  end
end
