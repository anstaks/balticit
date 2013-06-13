# Encoding: utf-8
module ApplicationHelper
  def cp(path)
    "active" if current_page?(path)
  end

  def meta_title
    @page ? (@page.title ? Setting.first.title+' - '+@page.title : Setting.first.title) : Setting.first.title
  end
  def meta_keywords
    @page ? (@page.keywords ? Setting.first.keywords+@page.keywords : Setting.first.keywords) : Setting.first.keywords
  end
  def meta_description
    @page ? (@page.description ? Setting.first.description+@page.description : Setting.first.description) : Setting.first.description
  end
end
