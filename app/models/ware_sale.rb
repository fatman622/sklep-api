class WareSale < ApplicationRecord
	belongs_to :profile
	belongs_to :ware
	validates_uniqueness_of :profile_id, :scope => :ware_id
end
