def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit this program"
end

def play(songs)
  song_number = gets.chomp.to_i
  puts songs[song_number+1]
end

def list(songs)
  puts songs
end