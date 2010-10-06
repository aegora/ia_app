module ApplicationHelper


 # Return a title on a per-page basis.
  def title
    base_title = "Inritius Alliance Character Database"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "IA Character DB", :class => "round")
  end


end
