def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  count = 1
  songs.map do |song|
    puts "#{count}. #{song}"
    count += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_number = get_user_input

  puts "Playing #{songs[song_number.to_i]}"
end

def exit_jukebox
  puts "Goodbye!"
  exit
end

def prompt
  puts "Please enter a command:"
end

def get_user_input
  gets.strip
end

def run(songs)
  user_input = ''

  until user_input == 'exit'
    prompt
    user_input = get_user_input

    if user_input == 'help'
      help
    elsif user_input == 'list'
      list(songs)
    elsif user_input == 'play'
      song_number = get_user_input.to_i
      play(song_number)
    end


  end
  exit_jukebox
end
