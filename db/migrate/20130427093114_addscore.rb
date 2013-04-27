class Addscore < ActiveRecord::Migration
  def up
  	add_column :pilts, :rating, :integer
  end

  def down
  	remove_column :pilts, :rating
  end
end
