class Skill < ActiveRecord::Base
	attr_accessible :skill_name, :skill_subtype, :skillcost, :rank, :category
	
	belongs_to :character
	
	validates :type, :presence => true
	validates :rank, :presence => true
end
