def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit this program"
end

def play(songs)
  song_request = gets.chomp #this will be a title or a number
  
  if songs.include?(song_request)
    p song_request
  elsif songs[(song_request.to_i - 1)]
    p song_request
    p "this is a number"
  else
    p "Invalid input, please try again"
  end 
end
