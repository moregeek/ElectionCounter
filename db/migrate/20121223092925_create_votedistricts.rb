class CreateVotedistricts < ActiveRecord::Migration
  def change
    create_table :votedistricts do |t|
      t.string :name, :null => false
      t.integer :votes_required, :null => false, :default => 100
    end
  end
end
