 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'RAMACHANDRA GUHA', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Story of Cricket", audio_link: 'chapter1.mp3')

        sections = ['Cricket grew out of the many stick-andball games played in England 500 years ago. The word ‘bat’ is an old English word that simply means stick or club. By the seventeenth century, cricket had evolved enough to be recognisable as a distinct game. Till the middle of the eighteenth century, bats were roughly the same shape as hockey sticks, curving outwards at the bottom. There was a simple reason for this: the ball was bowled underarm, along the ground and the curve at the end of the bat gave the batsman the best chance of making contact', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Name some stick-and-ball games that you have witnessed or heard of.",
                    "Q2: The Parsis were the first Indian community to take to cricket. Why?",
                    "Q3: The rivalry between the Parsis and the Bombay Gymkhana had a happy ending for the former. What does ‘a happy ending’ refer to?",
                    "Q4: Do you think cricket owes its present popularity to television? Justify your answer.",
                    "Q5: Why has cricket a large viewership in India, not in China or Russia?",
                    "Q6: What do you understand by the game’s (cricket) ‘equipment’?",
                    
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
