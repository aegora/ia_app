class CharactersController < ApplicationController
        before_filter :authenticate, :only => [:index, :edit, :update]
        before_filter :correct_user, :only => [:edit, :update]
	
	layout "application", :except => [:race_div]
	
 def index
    @title = "My Characters"
    @characters =  Character.paginate(:page => params[:page])
  end	  



  def show
    @character = Character.find(params[:id])
    @title = @character.character_name
    @race_name = BaseStat.find(@character.race).race
    
    skills = @character.skills 
    @spent_exp = 0
    if (skills.nil?) then
       skills = []	    
    else 	    
      skills.each {|s|
        @spent_exp += s.skillcost
      } # end each s
    end # end else not nil.
    
    @skills_agility = []
    @skills_connection = []
    @skills_intellect = []
    @skills_magic = []
    @skills_might = []
    @skills_divine = []
    
    skills.each {|s|
      @skills_agility += [s] if s.category == 'agility'
      @skills_connection  += [s] if s.category == 'connection'
      @skills_intellect  += [s] if s.category == 'intellect'
      @skills_magic  += [s] if s.category == 'magic'
      @skills_might  += [s] if s.category == 'might'
      @skills_divine  += [s] if s.category == 'divine'
    }
    
    
    @gained_exp = 0
	    
    unless @character.experiences.nil? then
      @character.experiences.each {|xp|
        @gained_exp += xp.exp_gained
      } # end each exp
    end # end unless experiences = nil
    unless @character.flaws.nil? then
      @character.flaws.each {|xp|
        @gained_exp += xp.exp_value
      } # end each exp
    end # end unless flaw list = nil
    
end # end show function



  def new
    #@test = params.inspect
		
    # if a race has been chosen, use this to populate the starting stat fields,		
    # otherwise, use argead as default.
    if (params[:raceindex].nil? == false) then
        @race_base = BaseStat.find(params[:raceindex])
	@race_index = params[:raceindex]
    else
        @race_base = BaseStat.find(1)
	@race_index = 1
    end	    
	
    @character = Character.new
    @title = "New Character"
    @base_stats = BaseStat.all
    
    @boons = 0
    current_user.boons.each {|b|
      @boons += b.howmany
    }
    
    @sphere_list = []
    Spellinfo.all(:select => "distinct sphere").each { |s|
      @sphere_list += [s.sphere]
    }
  end


  # used by ajax to return the base values for the race submitted.
  # returns numbers only. numbers used to update specific elements in html page.
  def race_info 
	 @par = params.inspect
	
	if params[:raceindex].nil? then
	    @race_index = "argead"
	else
           @race_index = params[:raceindex]
        end
	
	#@base_stats = BaseStat.all
	@race_base =  BaseStat.find(@race_index) 
    	  
        #render :xml => @race_base
	render :json => @race_base
  end	  



   def create
    
	   
    @character = current_user.characters.build(params[:character])
    if @character.save
      flash[:success] = "New Character Created!"
      redirect_to @character
    else
      @title = "New Character"
      render 'new'
    end
    
    
  end #end create
  
  
  
  
  def destroy
    Character.find(params[:id]).destroy
    flash[:success] = "Character destroyed."
    redirect_to character_path
  end

  
  
   def edit
    @character = Character.find(params[:id])
    @title = "Edit Character"
    
    # @current_user = current_user	
    @skill_list = @character.skills
    # @skill_list = Attribute.all(:conditions => ["user_id = ?", @character.user.user_id], :order => " DESC")
      
    
  
  end



 def update
    @character = Character.find(params[:id])
    if @character.update_attributes(params[:character])
      flash[:success] = "Character updated."
      redirect_to @character
    else
      @title = "Edit character"
      render 'edit'
    end
end #end update
	
	
	
private	
	
    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @character = Character.find(params[:id])
      @user = @character.user
      @user_id = @character.user_id

      redirect_to(root_path) unless current_user?(@user)
    end
	
end # end controller	
	