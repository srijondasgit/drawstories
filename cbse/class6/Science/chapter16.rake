 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "GARBAGE IN, GARBAGE OUT", audio_link: 'chapter1.mp3')

        sections = ['We throw out so much rubbish or garbage everyday from our homes, schools, shops and offices. The grains, pulses, biscuits, milk or oil purchased in shops, are packed in plastic bags or tins. All these wrapping material go out as garbage. We sometimes buy things that are rarely used and often thrown into the garbage.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1:  Which kind of garbage is not converted into compost by the redworms?",
                    "Q2:  Is garbage disposal the responsibility only of the government?",
                    "Q3:  Is it possible to reduce the problems relating to disposal of garbage?",
                    "Q4:  Do you think it is better to use compost instead of chemical fertilisers? Why?",
                                     
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
