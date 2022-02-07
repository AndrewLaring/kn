class CreateCourseReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :course_reviews do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true
      t.text :text
      t.timestamps
    end
  end
end
