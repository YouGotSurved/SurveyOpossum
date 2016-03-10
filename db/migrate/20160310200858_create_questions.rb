class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.integer :order_number
      t.string :type
      t.text :text
      t.boolean :required

      t.timestamps null: false
    end
  end
end
