module Component

class Page < Lissio::Component::Container
	element '#page'

	def go(page, data = nil)
		case page
		when :index
			Shows.all { |shows|
				ShowTemplate.new(self, shows).render
			}
    end
	end

	def render
		super do
      table({class: 'table table-bordered table-hover'}) do
    		tbody.mescalina! do
          tr do
            td 'Name'
            td 'Episodes'
            td 'Fansub'
            td 'Translator'
            td 'Editor'
            td 'Checker'
            td 'Timer'
            td 'Typesetter'
            td 'Encoder'
            td 'QChecker'
          end
	      end
      end
    end
  end
end

end
