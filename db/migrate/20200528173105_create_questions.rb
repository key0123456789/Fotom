class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :item, null: :false
      t.references :book, foreign_key: true
    end
  end
end
