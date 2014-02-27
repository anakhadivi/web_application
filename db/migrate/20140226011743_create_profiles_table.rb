class CreateProfilesTable < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
   		t.string :gender
  		t.integer :age
  		t.string :hometown
  		t.string :relationship_status
  		t.integer :user_id
	  end
  end
end
