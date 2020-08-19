 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MOTIONS OF THE EARTH", audio_link: 'chapter1.mp3')

        sections = ['As you know that the earth has two types of motions,namely rotation and revolution. Rotation is the movement of the earth on its axis. The movement of the earth around the sun in a fixed path or orbit is called Revolution.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is the angle of inclination of the earth’s axis with its orbital plane?",
                    "Q2: Define rotation and revolution.",
                    "Q3: What is a leap year?",
                    "Q4: Differentiate between the Summer and Winter Solstice.",
                    "Q5: What is an equinox?",
                    "Q6: Why does the Southern Hemisphere experience Winter and Summer Solstice in different times than that of the Northern Hemisphere?",
                    "Q7: Why do the poles experience about six months day and six months night?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
