class Profile < ApplicationRecord
	validates :name, :age, :telephone , presence: true
	has_many :ware_sales
	has_many :wares, :through => :ware_sales
end
