require_relative "db"
require_relative "associations"
require_relative "admin_methods"
require_relative "game_methods"
require "pry"


loop do

puts("**********************************************************")
puts("    ________           __    ______               __          ")
puts("   / ____/ /___ ______/ /_  / ____/___ __________/ /____     ")
puts("  / /_  / / __ `/ ___/ __ \\/ /   / __ `/ ___/ __  / ___/    ")
puts(" / __/ / / /_/ (__  ) / / / /___/ /_/ / /  / /_/ (__  )    ")
puts("/_/   /_/\\__,_/____/_/ /_/\\____/\\__,_/_/   \\__,_/____/    ")
puts("**********************************************************")
puts("welcome to the main menu:")
puts("-------------------------")
puts("Please press 1 to create a flash card.")
puts("Please press 2 to view all flash cards.")
puts("Please press 3 to edit a flash card.")
puts("Please press 4 to delete a flash card.")
puts("Please press 5 to view all scores / recent answers.")
puts("Please press 6 to play.")
puts("Please press 7 to exit and save.")
puts("****************************************************")

selection = gets.chomp.to_i

case selection

  when 1
      add_card
  when 2
     view_card
  when 3
    edit_card
  when 4
    delete_card
  when 5
    score_keeping
  when 6
    game_play
  when 7
    exit
  end
end

#i tried to keep the main controller as clean as possible.
