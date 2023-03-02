format :html do
  view :breadcrumbs do
    breadcrumb breadcrumb_items
  end

  def breadcrumb_items
    # type = card.type_card
    [
      link_to("Home", href: "/"),
      # link_to_card(type, type.name.vary(:plural)),
      render_name
    ]
  end
end