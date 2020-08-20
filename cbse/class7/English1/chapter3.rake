 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'D. J. ENRIGHT', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Rebel", audio_link: 'chapter1.mp3')

        sections = ['When everybody has short hair,The rebel lets his hair grow long.When everybody has long hair,The rebel cuts his hair short.When everybody talks during the lesson,The rebel doesn’t say a word.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: If someone doesn’t wear a uniform to school, what doyou think the teacher will say?",
                    "Q2: When everyone wants a clear sky, what does the rebel want most?",
                    "Q3: If the rebel has a dog for a pet, what is everyone else likely to have?",
                    "Q4: Why is it good to have rebels?",
                    "Q5: Why is it not good to be a rebel oneself?",
                    "Q6: Would you like to be a rebel? If yes, why? If not,why not",
                    
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
