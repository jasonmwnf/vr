module ApplicationHelper

  def bclass(body_class)
    content_for(:bclass) { body_class }
  end

  def fclass(footer_class)
    content_for(:fclass) { footer_class }
  end

end
