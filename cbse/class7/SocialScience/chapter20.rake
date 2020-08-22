 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Environment", audio_link: 'chapter1.mp3')

        sections = ['After the long vacation, when Ravi started going to school again, he noticed that the only playground next to his school was dug up. People said that a huge building with many flats will be constructed there. Ravi was almost in tears, when he realised that the big playground with its soft grass, marigolds and butterflies is gone for ever. He shared his feelings with his classmates. In the assembly, the Principal too sadly observed, “See how our environment is changing.”', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is an ecosystem?",
                    "Q2: What do you mean by natural environment?",
                    "Q3: Which are the major components of the environment?",
                    "Q4: Give four examples of human made environment.",
                    "Q5: What is lithosphere?",
                    "Q6: Which are the two major components of biotic environment?",
                    "Q7: What is biosphere?"
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
