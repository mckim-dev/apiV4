class ChangeQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :image0, :string
    remove_column :questions, :image1, :string
    remove_column :questions, :image2, :string
    remove_column :questions, :image3, :string
    remove_column :questions, :answer0, :string
    remove_column :questions, :answer1, :string
    remove_column :questions, :answer2, :string
    remove_column :questions, :answer3, :string
    add_column :questions, :image, :string
    add_column :questions, :answer, :string
  end
end
