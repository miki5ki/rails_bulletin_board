class ChangeDataSolvedStatusToQuestion < ActiveRecord::Migration[7.0]
  def change
    change_column :questions, :solved_status, :string
  end
end
