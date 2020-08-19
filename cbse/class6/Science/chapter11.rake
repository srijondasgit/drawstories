 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "LIGHT, SHADOWS AND REFLECTIONS", audio_link: 'chapter1.mp3')

        sections = ['We see so many objects around us, colourful and different.On the way to school we see things like buses, cars, cycles, trees,animals and sometimes flowers. How do you think, we see all these objects? Think of the same places at night time if it were completely dark. What will you see? Suppose you go inside a completely dark room. Are you able to see any objects in the room?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Can you think of creating a shape that would give a circular shadow if held in one way and a rectangular shadow if held in another way?",
                    "Q2: In a completely dark room, if you hold up a mirror in front of you, will you see a reflection of yourself in the mirror?",
                                               
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
