module LandingHelper
  def categories_list
    Category.all.order(:orden)
  end

  def calculate_offset(count)
    case count
      when 1
        'col-lg-1 col-lg-offset-4'
      when 2
        'col-lg-1 col-lg-offset-3'
      when 3
        'col-lg-1 col-lg-offset-3'
      else
        'col-lg-0 col-lg-offset-3'
    end
  end

  def sliders_list
    Slide.all.order(:orden)
  end
end
