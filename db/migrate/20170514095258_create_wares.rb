class CreateWares < ActiveRecord::Migration[5.0]
  def change
    create_table :wares do |t|
    	t.text     "name"
    	t.text  "country"
    	t.float  "price"
      t.timestamps
    end
  end
end
