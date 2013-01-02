class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :count, :null => false
      t.references :district, :null => false
      t.references :user, :null => false
      t.timestamps
    end
  end
end
