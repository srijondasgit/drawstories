 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "GLOBE : LATITUDES AND LONGITUDES", audio_link: 'chapter1.mp3')

        sections = ['In the previous chapter, you have read that our planet earth is not a sphere. It is slightly flattened at the North and the South Poles and bulge in the middle. Can you imagine how it looks? You may look at a globe carefully in your classroom to get an idea. Globe is a true model (miniature form) of the earth (Figure 2.1).', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is the true shape of the earth?",
                    "Q2: What is a globe?",
                    "Q3: What is the latitudinal value of the Tropic of Cancer?",
                    "Q4: What are the three heat zones of the Earth?",
                    "Q5: What are parallels of latitude and meridians of longitude?",
                    "Q6: Why does the torrid zone receive maximum amount of heat?",
                    "Q7: Why is it 5.30 p.m. in India and 12.00 noon in London?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
