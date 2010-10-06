class Skill < ActiveRecord::Base
	attr_accessible :type, :subtype, :skillcost, :rank
	
	belongs_to :character
	
	validates :type, :presence => true
	validates :rank, :presence => true
end
