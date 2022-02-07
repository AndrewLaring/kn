class CreateUserCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_courses do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.references :course, index: true, foreign_key: { to_table: :courses }

      t.timestamps
    end
    add_index :user_courses, [:user_id, :course_id], unique: true
  end
end
