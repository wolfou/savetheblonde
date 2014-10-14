module ApplicationHelper

  # Retourner un titre basé sur la page.
  def logo
  	 @logo = image_tag("savetheblonde.jpg", :alt => "Save the blonde", :class => "round") 
  end

  def titre
  	base_titre = "Save the blonde"
  	if @titre.nil?
  		base_titre
  	else
  		"#{base_titre} | #{@titre}"
  	end
  end

  def javascript(*files)
  	content_for(:head) { javascript_include_tag(*files) }
  end
end