class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :creator
      t.string :difficulty_level
      t.integer :exercises
      t.string :details
      t.string :equipment
      t.string :avatar

      t.timestamps
    end
  end
end
