class BaseStat < ActiveRecord::Base
	attr_accessible :race, :loc, :con, :halo, :willpower, :boon_cost, :multiplier_agility,
	:multiplier_connection, :multiplier_intellect, :multiplier_magic, :multiplier_might,
	:racial_flaws, :racial_abilities, :racial_skills, :primary_sphere
	
	
end
