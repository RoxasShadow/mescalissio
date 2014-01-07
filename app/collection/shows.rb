class Shows < Lissio::Collection
  model Show

  def self.all
    Shows.fetch.then { |shows|
      yield shows
    }
  end

  adapter REST do
    endpoint fetch: -> (status = :ongoing, fansub = '') {
      "/shows/all/#{status}/#{fansub}"
    }

    parse do |shows|
      shows.map { |show|
        Show.parse show
      }.sort_by { |s| s.name }
    end
  end
end