 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Light", audio_link: 'chapter1.mp3')

        sections = ['You might have seen a beam of sunlight when it enters a room through a narrow opening or a hole. You may have also seen beams of light from the headlamps of scooters, cars and engines of trains [Fig. 15.1 (a)]. Similarly, a beam of light can be seen from a torch. Some of', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: State the characteristics of the image formed by a plane mirror.",
                    "Q2: Find out the letters of English alphabet or any other language known to you in which the image formed in a plane mirror appears exactly like the letter itself. Discuss your findings.",
                    "Q3: What is a virtual image? Give one situation where a virtual image is formed.",
                    "Q4: State two differences between a convex and a concave lens.",
                    "Q5: Give one use each of a concave and a convex mirror.",
                    "Q6: Which type of mirror can form a real image?".
                    "Q7: Which type of lens forms always a virtual image?",
                   

                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
