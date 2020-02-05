def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  request_song = gets.strip
  
  songs.each_with_index do |song, index|
    puts "Comparing #{request_song} with #{song}, and #{index}"
    title = song.split(" - ")
    puts "Title: #{title[1]}"
    if (request_song.to_i == index + 1)
      return puts "Playing #{request_song}"
    end
  end
  return puts "Invalid input, please try again"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
end


def run(songs)
  puts "Welcome to the jukebox!"
  puts "Please enter a command:"
  
#  help
#  list(songs)
  play(songs)
end
