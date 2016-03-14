class AddTakerIdToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :taker_id, :integer
  end
end
