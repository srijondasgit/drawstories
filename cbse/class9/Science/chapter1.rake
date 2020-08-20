
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MATTER IN OUR SURROUNDINGS", audio_link: 'chapter1.mp3')
        sections = ['As we look at our surroundings, we see a large variety of things with different shapes, sizes and textures. Everything in this universe is made up of material which scientists have named “matter”. The air we breathe, the food we eat, stones, clouds, stars, plants and animals, even a small drop of water or a particle of sand – every thing is matter. We can also see as we look around that all the things mentioned above occupy space and have mass. In other words, they have both mass and volume.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Convert the following temperatures to the celsius scale.(a) 293 K (b) 470 K',
                    'Q2:  Convert the following temperatures to the kelvin scale.(a) 25°C (b) 373°C',
                    'Q3:  Give reason for the following observations.(a) Naphthalene balls disappear with time without leaving any solid.(b) We can get the smell of perfume sitting several metres away.',
                    'Q4:  Arrange the following substances in increasing order of forces of attraction between the particles— water, sugar, oxygen.',
                    'Q5:  What is the physical state of water at—(a) 25°C (b) 0°C (c) 100°C ?',
                    'Q6:  Give two reasons to justify—(a) water at room temperature is a liquid.(b) an iron almirah is a solid at room temperature.',
                    'Q7:  Why is ice at 273 K more effective in cooling than water at the same temperature?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
