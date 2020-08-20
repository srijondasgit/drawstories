 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'MURIEL L. SONNE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Garden Snake", audio_link: 'chapter1.mp3')

        sections = ['I saw a snake and ran away...Some snakes are dangerous, they say; But mother says that kind is good, And eats up insects for his food. So when he wiggles in the grass', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Pick out the line that suggests that the child is afraid of snakes.
                        (ii) Which line shows a complete change of the child’s attitude towards snakes? Read it aloud.
                        (iii) “But mother says that kind is good...” What is mother referring to?",
                    "Q2: Find the word that refers to the snake’s movements in the grass.",
                    "Q3: There are four pairs of rhyming words in the poem. Say them aloud.",
                    "Q4: A snake has no legs or feet, but it moves very fast. Can you guess how? Discuss in the group.",
                    "Q5: Can you recall the word used for a cobra’s long sharp teeth? Where did you come across this word first?",
                    
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
