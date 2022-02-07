class CreateCourseData < ActiveRecord::Migration[6.1]
  def change
    create_table :course_data do |t|
      t.belongs_to :course, null: false, foreign_key: true
      t.jsonb :course_content, default: {}

      t.timestamps
    end
  end
end
