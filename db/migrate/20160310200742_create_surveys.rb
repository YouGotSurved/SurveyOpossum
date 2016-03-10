class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.integer :author_id
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
