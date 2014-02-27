class CreateBlogsTable < ActiveRecord::Migration
  def change
  	create_table :blogs do |t|
  		t.string :title
  		t.string :text
  		t.integer :user_id
  	end
  end
end
