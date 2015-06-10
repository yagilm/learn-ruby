#!/usr/bin/env ruby

class Song
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end
  def to_s
    "Song: #{@name} - #{@artist} (#{@duration})"
  end
end
# Define a subclass od Song that ha 
class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
end




aSong = Song.new("Bicylops", "Fleck", 260)
puts aSong.to_s
