class CreateBlogsTable < ActiveRecord::Migration
  def change
  	create_table :blogs do |t|
  		t.string :title
  		t.string :text
  	end
  end
end
