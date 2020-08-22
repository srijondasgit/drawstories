
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "RESOURCES AND DEVELOPMENT", audio_link: 'chapter1.mp3')
        sections = ['The process of transformation of things available in our environment involves an interactive relationship between nature, technology and institutions. Human beings interact with nature through technology and create institutions to accelerate their economic development.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Name three states having black soil and the crop which is mainly grown in it.',
                    'Q2:  What type of soil is found in the river deltas of the eastern coast? Give three main features of this type of soil.',
                    'Q3:  What steps can be taken to control soil erosion in the hilly areas?',
                    'Q4:  What are the biotic and abiotic resources? Give some examples.',
                    'Q5:  Explain land use pattern in India and why has the land under forest not increased much since 1960-61?',
                    'Q6:  How have technical and economic development led to more consumption of resources?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
