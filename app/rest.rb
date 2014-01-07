class REST < Lissio::Adapter::REST
  def initialize(model, point = nil, options = {}, &block)
    super(model, options) do
      base     'http://pigro.omnivium.it:4567/api/v1'
      endpoint point if point

      http do |req|
        req.headers.clear
      end

      instance_exec(&block) if block
    end
  end
end