class AddFieldsToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :name, :string
    add_column :exercises, :body_part, :string
    add_column :exercises, :description, :string
    add_column :exercises, :equipment, :string
    add_column :exercises, :video_url, :string
  end
end
