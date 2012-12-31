class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :count, :null => false
      t.references :district, :null => false
      t.references :users, :null => false
      t.timestamps
    end
  end
end
