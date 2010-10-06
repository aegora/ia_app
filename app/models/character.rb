#  This is the base character model.
#
# Character models possess only the skeletal information on a character,
# things that don't really change too much.



class Character < ActiveRecord::Base
	 attr_accessible :backstory, :character_name, :race, :gender, :alignment, :deity,
  	 :multiplier_agility, :multiplier_connection, :multiplier_intellect, :multiplier_might, 
	 :multiplier_magic


	 belongs_to :user
	 has_many :skills, :dependent => :destroy
	 has_many :experiences, :dependent => :destroy
	 has_many :flaws, :dependent => :destroy
	 has_many :items, :dependent => :destroy
	 
	 validates :backstory, :presence => true, :length => { :minimum => 50 }
         validates :user_id, :presence => true
	 
	 default_scope :order => 'characters.character_name DESC'
end
