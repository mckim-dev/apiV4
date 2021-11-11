class RemoveColumnsFromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :description0, :string
    remove_column :questions, :description1, :string
    remove_column :questions, :description2, :string
    remove_column :questions, :description3, :string
  end
end
