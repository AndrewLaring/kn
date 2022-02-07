class CreateCourseCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :course_categories do |t|
      t.string :name, null: false
      t.text :description
      t.belongs_to :user, null: false, foreign_key: 'created_by'
      t.timestamps
    end
  end
end
