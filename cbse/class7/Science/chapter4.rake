 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Heat", audio_link: 'chapter1.mp3')

        sections = ['In Chapter 3 you learnt that woollen clothes are made from animal fibres. You also know that cotton clothes are made from plant fibres. We wear woollen clothes during winters when it is cold outside. Woollen clothes keep us warm. We prefer to wear light coloured cotton clothes when it is hot. These give us a feeling of coolness. You might have wondered why particular types of clothes are suitable for a particular season.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: State similarities and differences between the laboratory thermometer and the clinical thermometer.",
                    "Q2: Give two examples each of conductors and insulators of heat.",
                   
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
