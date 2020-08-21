
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "POPULATION", audio_link: 'chapter1.mp3')
        sections = ['Can you imagine a world without human beings? Who would have utilised the resources and created social and cultural environment? The people are important to develop the economy and the society. The people make and use resources and are themselves resources with varying quality. Coal is but a piece of rock, until people were able to invent technology to obtain it and make it ‘resource’. Natural events, like a flood or a Tsunami, becomes a ‘disaster’ only when they affect a crowded village or a town.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why is the rate of population growth in India declining since 1981?',
                    'Q2:  Discuss the major components of population growth',
                    'Q3:  Define age structure, death rate and birth rate.',
                    'Q4:  How is migration a determinant factor of population change?',
                    'Q5:  Distinguish between population growth and population change.',
                    'Q6:  What is the relation between occupational structure and development?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
