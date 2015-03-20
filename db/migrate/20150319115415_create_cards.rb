class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :deck
      t.string :question
      t.string :answer
      t.string :dummy_answer_1
      t.string :dummy_answer_2
      t.string :dummy_answer_3

      t.timestamps
    end
  end
end
