class CreateProfilesTable < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
   		t.string :gender
  		t.datetime :birthday
  		t.string :hometown
  		t.string :relationship_status
	  end
  end
end
