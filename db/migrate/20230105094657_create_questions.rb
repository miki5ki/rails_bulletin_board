class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.boolean :solved_status
      t.integer :created_user_id

      t.timestamps
    end
  end
end
