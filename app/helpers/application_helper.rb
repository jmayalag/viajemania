module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = 'Viaje Mania'
    if page_title.empty? | page_title.blank?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
