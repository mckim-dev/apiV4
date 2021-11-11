class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :image0
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :option0
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :description0
      t.string :description1
      t.string :description2
      t.string :description3
      t.string :answer0
      t.string :answer1
      t.string :answer2
      t.string :answer3

      t.timestamps
    end
  end
end
