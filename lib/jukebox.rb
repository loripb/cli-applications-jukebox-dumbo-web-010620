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

def get_index(song_to_lookup, songs)
  result = 0
  songs.each_with_index do |song, index|
    if song == song_to_lookup
      result = index
    end
  end
  result
end

def play(songs)
  puts "Please enter a song name or number:"
  song = get_user_input

  # if the input is 1 character long we'll assume it's a number, if not we check to see if it is in the song list.
  # if the input is in the song list we retrive the index. if no of that checks out, throw an error.
  if song.length < 2
    puts "Playing #{songs[song.to_i - 1]}"
  elsif songs.include?(song)
    index = get_index(song, songs)
    puts "Playing #{songs[index]}"
  else
    puts "Invalid input, please try again"
  end
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
      song = get_user_input.to_i
      play(song)
    end


  end
  exit_jukebox
end
