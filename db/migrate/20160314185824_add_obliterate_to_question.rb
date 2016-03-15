class AddObliterateToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :obliterate, :string
  end
end
