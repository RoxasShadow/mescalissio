module Component

class ShowTemplate < Lissio::Component
  element '#mescalina'

  def initialize(parent, shows)
    super parent

    @shows = shows
  end

  css do
    rule 'tr:first-child' do
      font weight: :bold
    end
  end

  def render
    @shows.sort_by { |s| s.name }.each { |show|
      a = ShowRow.new self, show
      a.render
      element << a.element
    }

    super
  end
end

class ShowRow < Lissio::Component
  tag name: :tr

  def initialize(parent, show)
    super parent

    @show = show
  end

  def render
    element.clear

    @show.class.properties.keys.each { |field|
      a = ShowInfo.new(self, @show, field)
      a.render
      element << a.element
    }

    super
  end
end

class ShowInfo < Lissio::Component
  tag name: :td

  def initialize(parent, show, field)
    super parent

    @show  = show
    @field = field
  end

  def render
    element.clear

    element << @show.send(@field.to_sym)

    super
  end
end

end