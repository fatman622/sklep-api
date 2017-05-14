class CreateWareSales < ActiveRecord::Migration[5.0]
  def change
    create_table :ware_sales do |t|
    	t.integer :profile_id
      t.integer :ware_id
      t.timestamps
    end
  end
end
