# Add your code here


def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, index|
    songs.each_with_index
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_answer = gets.chomp
  songs.each_with_index do |song, index|
    songs.each_with_index
    if song_answer == song || song_answer.to_i == index+1
      puts "Playing #{song}"
      break
    end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox
  puts "Goodbye"
end


def run(song)
  help()
  puts "Please enter a command:"
  the_answer = gets.chomp
  puts the_answer
  while the_answer != "exit"
    if the_answer == "help"
      help()
    elsif the_answer == "list"
      list(song)
    elsif the_answer == "play"
      play(song)
    end
    puts "Please enter a command:"
    the_answer = gets.chomp
  end
  exit_jukebox()
end
