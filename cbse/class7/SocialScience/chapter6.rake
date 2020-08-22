 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "TOWNS, TRADERS AND CRAFTSPERSONS", audio_link: 'chapter1.mp3')

        sections = ['What would a traveller visiting a medieval town expect to find? This would depend on what kind of a town it was – a temple town, an administrative centre, a commercial town or a port town to name just some possibilities. In fact, many towns combined several functions – they were administrative centres, temple towns, as well as centres of commercial activities and craft production', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: How was water supplied to the city of Thanjavur?",
                    "Q2: Who lived in the “Black Towns” in cities suchas Madras?",
                    "Q3: Why do you think towns grew around temples?",
                    "Q4: How important were craftspersons for the building and maintenance of temples?",
                    "Q5: Why did people from distant lands visit Surat?",
                    "Q6: In what ways was craft production in cities like Calcutta different from that in cities like Thanjavur?",
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
