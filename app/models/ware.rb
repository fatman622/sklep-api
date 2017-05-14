class Ware < ApplicationRecord
	validates :name, :country, :price, presence: true
	has_many :ware_sales
	has_many :profiles, :through => :ware_sales
end
