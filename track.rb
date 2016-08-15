# You know what would be nice? If tracks were their own objects, instead of just hashes.
#
# Add a Track class (and a file to put it in). A track should have the following attributes, with getter methods for each attribute:
#
# album_id
# id (track_id in the CSV)
# title
# track_number
# duration_ms (duration in milliseconds)
# Change your Album class so that the @tracks instance variable is an array of Track objects instead of an array of hashes. Modify the runner.rb file to get this working. (Hint You'll need to require_relative your new track.rb file with your Track class.)

# :id = track_id in CSV !!!!!!!!!
class Track
  attr_accessor :album_id, :id, :title, :track_number, :duration_ms
  
