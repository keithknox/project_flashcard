# the idea behind the separate method pages is that I was planning on adding user and
# admin function since I didn't see the point of allowing the user to modify the cards themselves.
# ambitious, but didn't have the time.



  def game_play
    loop do
      question_card = Card.find_by(correct: false, incorrect: false)
      puts question_card.question
      puts("Please enter your answer or press 'Q' to quit:")
      user_answer = gets.chomp.downcase
      if user_answer == "q"
        break
      elsif user_answer == question_card.answer
          puts("CORRECT!")
          question_card.update(correct: true)
      elsif user_answer !=question_card.answer
          puts("INCORRECT!")
          question_card.update(incorrect: true)
        end
        #unfortunately, I couldn't figure out a way to stop when the values ran out.
    end

  def score_keeping
    correct_score = Card.where(correct: true).count
    puts("Total correct: #{correct_score}")
    incorrect_score = Card.where(incorrect: true).count
    puts("Total incorrect: #{incorrect_score}")
    total_score = correct_score - incorrect_score
    puts("Total Score: #{total_score}")
    end
  end
