 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'L.E. GREEVE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "I want something in a cage", audio_link: 'chapter1.mp3')

        sections = ['MR PURCELL did not believe in ghosts. Nevertheless, the man who bought the two doves, and his strange act immediately thereafter, left him with a distinct sense of the uncanny. As though, behind his departed customer, there had lingered the musty smell of an abandoned, haunted house.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1:  Why, in your opinion, did the man set the doves free?",
                    "Q2: Why did it make Mr Purcell feel “vaguely insulted”?",
                                        
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
