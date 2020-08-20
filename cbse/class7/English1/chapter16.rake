 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Fire: Friend and Foe", audio_link: 'chapter1.mp3')

        sections = ['Early man didn’t know what fire was, but he must have seen the damage it could cause. He must have watched lightning and volcanoes long before he began to use fire himself.Fire was powerful and dangerous, and he was frightened.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What do you understand by the ‘flash point’ of a fuel?",
                    "Q2: What are some common uses of fire?",
                    "Q3: In what sense is it a “bad master”?",
                    "Q4: What are the three main ways in which a fire can be controlled or put out?",
                    "Q5: Why does a burning candle go out when you blow on it?",
                    "Q6: Spraying water is not a good way of putting out an oil fire or an electrical fire. Why not?",
                    "Q7: What are some of the things you should do to prevent a fire at home and in the school?",
                    
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
