module Web::PagesHelper
  def contacts_page
    Page.find(configus.pages.contacts.id)
  end

  def program_page
    Page.find(configus.pages.program.id)
  end

  def provider_page
    Page.find(configus.pages.provider.id)
  end

  def partners_page
    Page.find(configus.pages.partners.id)
  end

  def place_page
    Page.find(configus.pages.place.id)
  end

  def link_to_page(page, options = {})
    link_to page.name, page_path(page), options
  end
end
