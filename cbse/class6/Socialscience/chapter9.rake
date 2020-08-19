 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "VITAL VILLAGES, THRIVING TOWNS", audio_link: 'chapter1.mp3')

        sections = ['We often take the use of iron for granted today.Things made of iron (and steel) are a part of our daily lives. The use of iron began in the subcontinent around 3000 years ago. Some of the largest collections of iron tools and weapons were found in the megalithic burials, about which you read in Chapter 5', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    
                    "Q1: Describe the functions of the gramabhojaka. Why do you think he was powerful?",
                    "Q2: List the crafts persons who would have been present in both villages and cities.",
                    "Q3: Which of the iron tools shown on page 87 would have been important for agriculture? What would the other tools have been used for?",
                    "Q4: Compare the drainage system in your locality with that of the cities mentioned in the lesson. What similarities and differences do you notice?",
                    
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
