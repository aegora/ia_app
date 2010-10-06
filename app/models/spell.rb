class Spell < ActiveRecord::Base
	attr_accessible :spell_name, :level, :sphere, :custom, :spell_description
	
	belongs_to :character
	
	validates :spell_name, :presence => true
	validates :sphere, :presence => true
	validates :level, :presence => true
end
