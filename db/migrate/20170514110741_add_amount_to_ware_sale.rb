class AddAmountToWareSale < ActiveRecord::Migration[5.0]
  def change
    add_column :ware_sales, :amount, :integer
  end
end
