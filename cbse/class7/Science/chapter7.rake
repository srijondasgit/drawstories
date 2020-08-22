 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Weather, Climate and Adaptations", audio_link: 'chapter1.mp3')

        sections = ['Do you remember the things that you were asked to pack when you were heading for a hill station? When the sky is cloudy, your parents insist that you carry an umbrella. Have you heard elders in your family discuss the weather before planning a family function? You must have also heard the experts discussing the weather before the start of a game. Have you ever wondered why? The weather may have a profound effect on the game. It has a profound effect on our lives.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Name the elements that determine the weather of a place.",
                    "Q2: When are the maximum and minimum temperatures likely to occur during the day?",
                    "Q3: Which of the two changes frequently, weather or climate?",
                    "Q4: The tropical rainforest has a large population of animals. Explain why it is so.",
                    "Q5: Explain, with examples, why we find animals of certain kind living in particular climatic conditions.",
                    "Q6: How do elephant living in the tropical rainforest adapt itself?",
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
