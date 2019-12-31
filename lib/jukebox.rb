require 'pry'

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : eits thid program"
end

def list(songs)
  count = 1
  songs.map do |song|
    puts "#{count}. #{song}"
    count += 1
  end
end

def play(song_number, songs)
  song_number -= 1

  puts "Playing #{songs[song_number]}"
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
  prompt

  until user_input == 'exit'
    user_input = get_user_input

    if user_input == 'help'
      help
    elsif user_input == 'list'
      list(songs)
    elsif user_input == 'play'
      song_number = get_user_input
      play(song_number, songs)
    end


  end
  exit_jukebox
end

binding.pry
