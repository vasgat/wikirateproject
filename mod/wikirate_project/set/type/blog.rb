card_accessor :image, type: :image
card_accessor :description, type: :basic
card_accessor :link, type: :uri
card_accessor :blog_type, type: :list

format :html do
  def edit_fields
    %i[image description link blog_type]
  end

  def blog_types
    blog_types = card.fetch(:blog_type)
    blog_types.nil? ? [] : card.fetch(:blog_type).item_names
  end

  view :core, template: :haml
end