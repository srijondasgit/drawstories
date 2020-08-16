
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Indian Constitution", audio_link: 'chapter1.mp3')
        sections = ['In this chapter, we are going to begin with football, a game many of you have probably heard of, or even played. As the name suggests, this is a game that involves the players’ feet. According to the rules of football, if the ball touches the arm of any player (except the goalkeeper), then this is considered a foul. So if players start holding the football in their hands and passing it around, then they are not playing football any more. Similarly other games, such as hockey or cricket, also have rules according to which they are played. Each of these rules helps define the game, and helps us distinguish one game from another. As these are fundamental to the game, we can also call them the constitutive rules of the game. Like these games, a society also has constitutive rules that make it what it is and differentiate it from other kinds of societies. In large societies in which different communities of people live together, these rules are formulated through consensus, and in modern countries this consensus is usually available in written form. A written document in which we find such rules is called a Constitution.',
                    'Please refer your text book for the rest of the course',
                   ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why does a democratic country need a Constitution?',
                    'Q2:  What would happen if there were no restrictions on the power of elected representatives?',
                    'Q3:  Why do you think this feature is important - Federalism, Separation of Powers, Fundamental Rights, Parliamentary Form of Government',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
