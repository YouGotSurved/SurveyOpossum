class CreateTakers < ActiveRecord::Migration
  def change
    create_table :takers do |t|
      t.integer :user_id
      t.datetime :taken_at

      t.timestamps null: false
    end
  end
end
