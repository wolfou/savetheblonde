class PagesController < ApplicationController
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
end
