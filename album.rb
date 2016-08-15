require 'pry'

class Album
  attr_accessor :tracks
  def initialize(album_id, album_name, artists)
    @id = album_id
    @album_name = album_name
    @artists = artists
    @tracks = []
  end

  def id
    @id
  end
  def title
    @album_name
  end
  def artists
    @artists
  end
  def duration_min
    sum = 0
    tracks.each do |track|
      sum += ((track[:duration_ms].to_f/1000)/60)
    end
    return sum.round(2)
  end
  def titles
    track_list = []
    tracks.each do |track|
      track_list << track[:title]
    end
    track_list = track_list.join("\n- ")
    return track_list
  end

  def tracks
    @tracks
  end

  def summary
    "Name: #{@album_name}\n"\
    "Artist(s): #{@artists}\n"\
    "Duration (min.): #{duration_min}\n"\
    "Tracks: \n- #{titles}\n"
  end
end
