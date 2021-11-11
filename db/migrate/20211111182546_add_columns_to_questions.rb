class AddColumnsToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :hint, :string
    add_column :questions, :answer_description, :string
  end
end
