class AddFieldsToAmount < ActiveRecord::Migration[6.0]
  def change
    add_column :amounts, :sets, :integer
    add_column :amounts, :reps, :integer
  end
end
