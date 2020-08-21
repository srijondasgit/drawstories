 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Water", audio_link: 'chapter1.mp3')

        sections = ['When you think of water, what images come to your mind? You think of rivers, the waterfalls, the pitter patter of raindrops, water in your taps... Children love to float paper boats in rain puddles. By noon the puddles vanish. Where does the water go? The sun’s heat causes evaporation of water into vapour. When the water vapour cools down, it condenses and forms clouds. From there it may fall on the land or sea in the form of rain, snow or sleet.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is precipitation?",
                    "Q2: What is water cycle?",
                    "Q3: What are the factors affecting the height of the waves?",
                    "Q4: Which factors affect the movement of ocean water?",
                    "Q5: What are tides and how are they caused?",
                    "Q6: What are ocean currents?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
