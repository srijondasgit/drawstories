
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "WATER RESOURCES", audio_link: 'chapter1.mp3')
        sections = ['You already know that three-fourth of the earth’s surface is covered with water, but only a small proportion of it accounts for freshwater that can be put to use. This freshwater is mainly obtained from surface run off and ground water that is continually being renewed and recharged through the hydrological cycle. All water moves within the hydrological cycle ensuring that water is a renewable resource.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Explain how water becomes a renewable resource.',
                    'Q2:  What is water scarcity and what are its main causes?',
                    'Q3:  Compare the advantages and disadvantages of multi-purpose river projects.',
                    'Q4:  Discuss how rainwater harvesting in semi-arid regions of Rajasthan is carried out.',
                    'Q5:  Describe how modern adaptations of traditional rainwater harvesting methods are being carried out to conserve and store water.',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
