 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Gopal and the Hilsa-fish", audio_link: 'chapter1.mp3')

        sections = ['IT WAS THE SEASON FOR HILSA-FISH. FISHERMEN COULD THINK OF NOTHING BUT  HILSA-FISH', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why did the king want no more talk about the hilsa-fish?",
                    "Q2: What did the king ask Gopal to do to prove that he was clever?",
                    "Q3: What three things did Gopal do before he went to buy his hilsa-fish?",
                    "Q4: How did Gopal get inside the palace to see the king after he had bought the fish?",
                    "Q5: Explain why no one seemed to be interested in talking about the hilsa-fish which Gopal had bought",
                    
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
