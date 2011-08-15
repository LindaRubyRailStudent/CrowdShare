module ApplicationHelper
  # return a title on a per-page basis
  def title
    base_title = "Crowdshare | Online Sharing"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("Logo.jpg", :alt =>"Crowdshare Logo", :class => "round")
  end
end
