class Boon < ActiveRecord::Base
	attr_accessible :howmany, :reason, :date_gained
	
	belongs_to :character
	
	validates :howmany, :presence => true
	validates :reason, :presence => true
	validates :date_gained, :presence => true
end
