 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "TRADERS, KINGS AND PILGRIMS", audio_link: 'chapter1.mp3')

        sections = ['You read about the Northern Black Polished Ware in Chapter 9. This fine pottery, especially bowls and plates, were found from several archaeological sites throughout the subcontinent. How do you think it reached these places? Traders may have carried them from the places where they were made, to sell them at other places.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    
                    "Q1: Why did kings want to control the Silk Route?",
                    "Q2: What kinds of evidence do historians use to find out about trade and trade routes?",
                    "Q3: What were the main features of Bhakti?",
                    "Q4: Discuss the reasons why the Chinese pilgrims came to India.",
                    "Q5: Why do you think ordinary people were attracted to Bhakti?",
                                             
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
