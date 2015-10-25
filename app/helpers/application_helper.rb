module ApplicationHelper
  def fclass(footer_class)
    content_for(:fclass) { footer_class }
  end

end
