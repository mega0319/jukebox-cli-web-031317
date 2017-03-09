require 'pry';

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


#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs_length = 1.upto(songs.length).to_a
  if songs.include?(response)
    puts "Playing #{response}."
  elsif songs_length.include?(response.to_i)
    puts "Playing #{songs[(response.to_i)-1]}"
  else
    puts "Invalid input, please try again"
  end
  # songs.each_with_index do |song, index|
  #   if response == "#{song}"
  #     puts "Playing #{song}."
  #     break
  #   elsif response == "#{index + 1}"
  #     puts "Playing #{song}."
  #     break
  #   elsif songs.includes?() == false
  #     puts "Invalid input, please try again"
  #   end
  # end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  help
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp
      if command == "help"
        help
      elsif command == "list"
        list(songs)
      elsif command == "play"
        play(songs)
      elsif command == "exit"
        exit_jukebox
        break
    end
  end
end
