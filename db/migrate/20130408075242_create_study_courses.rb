class CreateStudyCourses < ActiveRecord::Migration
  def change
    create_table :study_courses do |t|
      t.string :name

      t.timestamps
    end
  end
end
