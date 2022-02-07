class AddDeletedAtToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :deleted_at, :datetime
  end
end
