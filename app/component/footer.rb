module Component

class Footer < Lissio::Component
  element '#footer'

  html do
    p '© 2014 ' do
      a({target: '_blank', href: 'https://github.com/nonchosbatta'}) do
        'Nonchosbatta'
      end
    end
  end

  css do
    rule '#footer' do
      height         60.px
      text    align: :right
      padding right: 10.px
    end
  end
end

end
