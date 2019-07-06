def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit this program"
end

def play(songs)
  song_request = gets.chomp ### this will be a title or a number
  if songs.include?(song_request) ### check if this is a full song title
    p song_request
  elsif song_request.to_i.to_s == song_request && songs[(song_request.to_i - 1)] ### check if this is a number && it's included in array
    p songs[(song_request.to_i - 1)]
  else
    p "Invalid input, please try again"
  end 
end

def list(songs)
  songs.map.with_index {|title, index|
    p "#{index+1}. #{title}"
  }
end 

def exit_jukebox
  p "Goodbye"
end 