class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.belongs_to :course_category, null: false, foreign_key: true
      t.string :name
      t.float :price
      t.float :rate

      t.text :description
      t.belongs_to :user, null: false, foreign_key: 'created_by'
      t.timestamps
    end
    add_index :courses, :name, unique: true
  end
end
