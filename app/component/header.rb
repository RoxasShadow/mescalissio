module Component

class Header < Lissio::Component
	element '#header'

	html do
		div({class: 'navbar navbar-default navbar-static-top', role: 'navigation'}) do
			div({class: 'container'}) do

				div({class: 'navbar-header'}) do
					button({class: 'navbar-toggle', :'data-toggle' => 'collapse', :'data-target' => '.navbar.collapse'}) do
						span({class: 'sr-only' }) << 'Toggle navigation'
						span({class: 'icon-bar'})
						span({class: 'icon-bar'})
						span({class: 'icon-bar'})
					end
					a({class: 'navbar-brand', href: '/#/'}) << 'Nonchosbatta'
				end

				div({class: 'collapse navbar-collapse'}) do
					ul({class: 'nav navbar-nav'}) do
						li.dropdown do
							a({class: 'dropdown-toggle', :'data-toggle' => 'dropdown', href: '#'}) do
								span 'Filters'
								b.caret
							end
							ul({class: 'dropdown-menu'}) do
								li.ongoing do
									a.ongoing! << 'On going'
								end

								li.finished do
									a.finished! << 'Finished'
								end

								li.dropped do
									a.dropped! << 'Dropped'
								end

                li.planned do
                  a.planned! << 'Planned'
                end
							end
						end
					end
				end
        
			end
		end
	end
end

end
