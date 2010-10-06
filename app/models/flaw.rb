class Flaw < ActiveRecord::Base
	attr_accessible :exp_value, :type
	
	belongs_to :character
	
	validates :exp_value, :presence => true
	validates :type, :presence => true
end
