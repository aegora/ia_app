class Experience < ActiveRecord::Base
	attr_accessible :exp_gained, :gains_bonus_pts, :game_note, :game_date
	
	belongs_to :character
	
	validates :exp_gained, :presence => true
	validates :game_date, :presence => true
end
