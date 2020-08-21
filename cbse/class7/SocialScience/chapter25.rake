 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Natural Vegetation and Wild Life", audio_link: 'chapter1.mp3')

        sections = ['Salima was excited about the summer camp she was attending. She had gone to visit Manali in Himachal Pradesh along with her class mates. She recalled how surprised she was to see the changes in the landform and natural vegetation as the bus climbed higher and higher. The deep jungles of the foothills comprising sal and teak slowly disappeared. She could see tall trees with thin pointed leaves and cone shaped canopies on the mountain slopes. She learnt that those were coniferous trees. She noticed blooms of bright flowers on tall trees. These were the rhododendrons. From Manali as she was travelling up to Rohtang pass she saw that the land was covered with short grass and snow in some places.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Which are the two factors on which the growth of vegetation mostly depends?",
                    "Q2: Which are the three broad categories of natural vegetation?",
                    "Q3: Name the two hardwood trees commonly found in tropical evergreen forest.",
                    "Q4: In which part of the world are tropical deciduous forest found?",
                    "Q5: In which climatic conditions are citrus fruits cultivated?",
                    "Q6: Mention the uses of coniferous forest.",
                    "Q7: In which part of the world is seasonal grassland found?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
