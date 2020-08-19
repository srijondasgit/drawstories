 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "AIR AROUND US", audio_link: 'chapter1.mp3')

        sections = ['We have learnt in Chapter 9 that all living things require air. But, have you ever seen air? You might not have seen air, but, surely you must have felt its presence in so many ways. You notice it when the leaves of the trees rustle or the clothes hanging on a clothes-line sway. Pages of an open book begin fluttering when the fan is switched on. The moving air makes it possible for you to fly your kite. Do you remember Activity 3 in Chapter 5 in which you separated the sand and sawdust by winnowing?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is the composition of air?",
                    "Q2: Which gas in the atmosphere is essential for respiration? ",
                    "Q3: How will you prove that air supports burning?",
                    "Q4: How will you show that air is dissolved in water?",
                    "Q5: Why does a lump of cotton wool shrink in water?",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
