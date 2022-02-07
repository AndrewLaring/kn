class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
    add_reference :users, :role, null: false, foreign_key: true
  end
end
