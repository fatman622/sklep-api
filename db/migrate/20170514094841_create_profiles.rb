class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
    	t.text :name
    	t.integer :age
    	t.integer :telephone
      t.timestamps
    end
  end
end
