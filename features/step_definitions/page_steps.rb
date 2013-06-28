Given /^there is a page with the slug "(.*?)" create translation "(.*?)" with the name "(.*?)" with the content "(.*?)"$/ do |slug, locale, name, content|
  page = Page.create!(slug: slug)
  page.translations.create!(name: name, locale: locale, content: content)
end
