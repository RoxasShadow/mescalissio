class Shekels < Lissio::Application
	expose :@page
	expose :refresh

	def initialize
		super

		router.fragment!

		route '/' do
			@page.go :index
		end

		@header = Component::Header.new self
		@page   = Component::Page.new   self
		@footer = Component::Footer.new self

		on :render do
			@header.render
			@page.render
			@footer.render
		end
	end

	def refresh
		@router.update
	end

	html do
		div.header!
		div.container.page!
		div.footer!
	end
end
