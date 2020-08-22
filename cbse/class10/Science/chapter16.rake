
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Sustainable Management of Natural Resources", audio_link: 'chapter1.mp3')
        sections = ['‘Living in harmony with nature’ is not new to us. Sustainable living has always been an integral part of India’s tradition and culture. It has been integrated with our long-lasting traditions and practices, customs, art and crafts, festivals, food, beliefs, rituals and folklore. Ingrained within us is the philosophy that ‘entire natural world be in harmony’ which is reflected in the famous phrase in Sanskrit ‘Vasudhaiv kutumbakam’ that means “the entire earth is one family”. The phrase is mentioned in‘Mahaupanishad’, that is probably a part of the ancient Indian text,Atharva Veda.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What changes can you make in your habits to become more environment-friendly?',
                    'Q2:  What would be the advantages of exploiting resources with short-term aims?',
                    'Q3:  Why should we conserve forests and wildlife?',
                    'Q4:  Suggest some approaches towards the conservation of forests.',
                    'Q5:  What changes would you suggest in your home in order to be environment-friendly?',
                    'Q6:  Can you suggest some changes in your school which would make it environment-friendly?',
                    'Q7:  How can you as an individual contribute or make a difference to the management of (a) forests and wildlife, (b) water resources and (c) coal and petroleum?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
