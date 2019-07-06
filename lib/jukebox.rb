songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

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

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  
  if user_input == "exit"
    exit_jukebox
  end
end