 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "COMPONENTS OF FOOD", audio_link: 'chapter1.mp3')

        sections = ['In Chapter 1, we made lists of the food items that we eat. We also identified food items eaten in different parts of India and marked these on its map. A meal could consist of chapati, dal and brinjal curry. Another may be rice, sambar and a vegetable preparation of lady’s finger (bhindi). Yet another meal could be appam, fish curry and vegetables.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Name the major nutrients in our food.",
                                                          
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
