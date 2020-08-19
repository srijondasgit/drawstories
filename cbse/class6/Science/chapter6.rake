 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "CHANGES AROUND US", audio_link: 'chapter1.mp3')

        sections = ['What fun if you suddenly get some magical powers to change anything around you! What are the things you would want to change? Can some of the changes be grouped together? How can we group various changes? It might help, if we find some similarities between them.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: To walk through a waterlogged area, you usually shorten the length of your dress by folding it. Can this change be reversed? ",
                    "Q2: You accidentally dropped your favourite toy and broke it. This is a change you did not want. Can this change be reversed?",
                    "Q3: A drawing sheet changes when you draw a picture on it. Can you reverse this change?",
                    "Q4: Give examples to explain the difference between changes that can or cannot be reversed.",
                    "Q5: A thick coating of a paste of Plaster of Paris (POP) is applied over the bandage on a fractured bone. It becomes hard on drying to keep the fractured bone immobilised. Can the change in POP be reversed?",
                    "Q6: A bag of cement lying in the open gets wet due to rain during the night. The next day the sun shines brightly. Do you think the changes, which have occurred in the cement, could be reversed?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
