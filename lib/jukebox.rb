def list(a)
  a.each_with_index{ |song, serial|
  puts "#{serial+1}. #{song}"
}
end

def play(array)
 puts "Please enter a song name or number:"
 user_sel = gets.chomp.to_s
  check = Integer(user_sel) rescue false
  if check
      user_sel = user_sel.to_i
      if user_sel <= array.length
        puts "Playing #{array[user_sel-1]}"
      else
        puts "Invalid input, please try again"
      end
  else
      if array.include?(user_sel)
        puts "Playing #{user_sel}"
      else
        puts "Invalid input, please try again"
      end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  sel = gets.chomp
  case sel
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
  end
end
