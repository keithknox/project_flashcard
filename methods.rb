# the idea behind the separate method pages is that I was planning on adding user and
# admin function since I didn't see the point of allowing the user to modify the cards themselves.
# ambitious, but didn't have the time.


  def add_card
      puts("Please enter a subject:")
      subject = gets.chomp
      puts("Please enter a question:")
      question = gets.chomp
      puts("Please enter an answer:")
      answer = gets.chomp
      puts("You have entered a #{subject} question asking #{question} and having the answer of #{answer}.")
      correct = false
      incorrect = false
      subject_id = Subject.create(name: subject)
      Card.create(subject: subject_id, question: question, answer: answer, correct: correct, incorrect: incorrect)
    end

  def view_card
       Card.all.each do |c|
         puts("#{c.id}, #{c.subject.name}, #{c.question}, NO ANSWERS HERE!, #{c.correct}, #{c.incorrect}")
       end
       #wouldn't want to display answers to the user no would we?
     end

     def edit_card
          puts("Please select a card number:")
          Card.all.each_with_index do |c|
          puts ("#{c.id}, #{c.subject.name}, #{c.question}")
        end
        card_edit_selection = gets.chomp.to_i
       target_card = Card.find_by(id: card_edit_selection)

        puts("What would you like to edit?")
          card_edit_choice = gets.chomp.downcase
            if card_edit_choice == "subject"
          #since i had trouble associating the subjects and cards, i did subject differently than the other fields.
              puts("Please select a subject number:")
              Subject.all.each do |s|
                puts("#{s.id}, #{s.name}")
              end
              subject_edit_selection = gets.chomp.to_i
              target_subject = Subject.find(subject_edit_selection)
              puts("Please enter a new subject name:")
              new_name = gets.chomp
              target_subject.update(name: new_name)
            elsif card_edit_choice == "question"
              puts("What question would you like?")
              question_edit = gets.chomp
              target_card.update(question: question_edit)
            elsif card_edit_choice == "answer"
              puts("What answer would you like?")
              answer_edit = gets.chomp
              target_card.update(answer: answer_edit)
            else
              puts("Please enter a valid answer.")
            end
          end

    def delete_card
      puts("Please select a card number:")
          Card.all.each_with_index do |c|
              puts ("#{c.id}, #{c.subject.name}, #{c.question}")
            end
            card_edit_selection = gets.chomp.to_i
            target_card = Card.find_by(id: card_edit_selection)
           puts("Which card would you like to delete?")
           target_card.destroy
         end
end
