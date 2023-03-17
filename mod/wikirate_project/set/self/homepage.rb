include_set Abstract::Slider

format :html do
  %i[core animation blogs_events services endorsements contact_us].each do |view|
    view view, template: :haml
  end

  def latest_blogs
    Card.search(type: 'Blog', limit: 2, sort_by: 'create', dir: 'desc')
  end

  def latest_events
    Card.search(type: 'Event', limit: 2, sort_by: 'create', dir: 'desc')
  end

  def endorsements
    Card.fetch('Endorsements')
  end
end