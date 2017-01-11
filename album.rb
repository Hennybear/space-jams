require_relative 'track'

class Album
  # Define your Album class here.
  attr_accessor :tracks

  def initialize(id, title, artists)	
  	@id, @title, @artists = id, title, artists 
  	@tracks = []
  end

  def id
  	@id
  end

  def title
  	@title
  end

  def artists
  	@artists
  end

  def tracks
  	@tracks
  end

  def tracks_summary
  	track_list = ''
  	@tracks.each do |track|
  		track_list << "- #{track.title}\n"
  	end
  	track_list
  end

  def duration_min
  	duration_in_ms = 0
  	@tracks.each do |track|
  		duration_in_ms += track.duration_ms.to_f
  	end
  	duration_in_sec = duration_in_ms / 1000
  	duration_in_min = duration_in_sec / 60
  	duration_in_min = '%.2f' % duration_in_min
  end

  def summary
    "Name: #{@title}\nArtist(s): #{@artists}\nDuration (min.): #{duration_min}\nTracks:\n#{tracks_summary}\n"
  end
end

