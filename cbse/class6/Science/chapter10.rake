 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MOTION AND MEASUREMENT OF DISTANCES", audio_link: 'chapter1.mp3')

        sections = ['There was a general discussion among the children in Paheli and Boojhos class about the places they had visited during the summer vacations. Someone had gone to their native village by a train, then a bus, and finally a bullock cart. One student had travelled by an aeroplane. Another spent many days of his holidays going on fishing trips in his uncles boat', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Give two examples each, of modes of transport used on land, water and air.",
                    "Q2: Why can a pace or a footstep not be used as a standard unit of length?",
                    "Q3: The height of a person is 1.65 m. Express it into cm and mm.",
                    "Q4: The distance between Radha's home and her school is 3250 m. Express this distance into km.",
                    "Q5: While measuring the length of a knitting needle, the reading of the scale at one end is 3.0 cm and at the other end is 33.1 cm. What is the length of the needle?",
                    "Q6: Write the similarities and differences between the motion of a bicycle and a ceiling fan that has been switched on.",
                    "Q7: Why could you not use an elastic measuring tape to measure distance? What would be some of the problems you would meet in telling someone about a distance you measured with an elastic tape?",
                    "Q8: Give two examples of periodic motion.",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
