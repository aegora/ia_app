class Item < ActiveRecord::Base
	attr_accessible :user_id, :what, :description, :expiry_date, :value, :howmany
	
	belongs_to :character
	
	
end
