class AddStudyCourseIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :study_course_id, :integer
  end
end
