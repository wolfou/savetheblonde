class PagesController < ApplicationController
  before_filter :authenticate, :only => [:partie2, :partie3, :partie4, :partie5]
  before_filter :check_level2, :only => [:partie2]
  before_filter :check_level3, :only => [:partie3]
  before_filter :check_level4, :only => [:partie4]
  before_filter :check_level5, :only => [:partie5]

  def home
  	@titre = "Accueil"
  end

  def contact
  	@titre = "Contact"
  end

  def partie1
  	@titre = "niveau 1"
  end

  def partie2
  	@titre = "niveau 2"
  end

  def partie3
    @titre = "niveau 3"
  end

  def partie4
  	@titre = "niveau 4"
  end

  def partie5
  	@titre = "niveau 5"
  	
  end

  private

      def authenticate
      deny_access unless signed_in?
    end

#les check_level ne sont pas dry du tout!!!!!
   def check_level2
      @user = current_user
      deny_level_access unless @user.level != nil && @user.level > 1     
    end

    def check_level3
      @user = current_user
      deny_level_access unless @user.level != nil && @user.level > 2      
    end

    def check_level4
      @user = current_user
      deny_level_access unless @user.level != nil && @user.level > 3      
    end

    def check_level5
      @user = current_user
      deny_level_access unless @user.level != nil && @user.level > 4    
    end
end
