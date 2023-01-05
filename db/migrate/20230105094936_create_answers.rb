class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :related_question_id

      t.timestamps
    end
  end
end
