 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Physical and Chemical Changes", audio_link: 'chapter1.mp3')

        sections = ['Every day you come across many changes in your surroundings. These changes may involve one or more substances. For example, your mother may ask you to dissolve sugar in water to make a cold drink. Making a sugar solution is a change. Similarly, setting curd from milk is a change. Sometimes milk becomes sour. Souring of milk is a change. Stretched rubber band also represents a change.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: When baking soda is mixed with lemon juice, bubbles are formed with the evolution of a gas. What type of change is it? Explain.",
                    "Q2: When a candle burns, both physical and chemical changes take place.Identify these changes. Give another example of a familiar process in which both the chemical and physical changes take place.",
                    "Q3: How would you show that setting of curd is a chemical change?",
                    "Q4: Explain why burning of wood and cutting it into small pieces are considered as two different types of changes.",
                    "Q5: Describe how crystals of copper sulphate are prepared.",
                    "Q6: Explain how painting of an iron gate prevents it from rusting.",
                    "Q6: Explain why rusting of iron objects is faster in coastal areas than in deserts."
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
