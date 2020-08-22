
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'LESLIE NORRIS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: " A Tiger in the Zoo", audio_link: 'chapter1.mp3')
        sections = ['He stalks in his vivid stripes',
                    'The few steps of his cage,',
                    'On pads of velvet quiet,',
                    'In his quiet rage.',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Read the poem again, and work in pairs or groups to do the following tasks.(i) Find the words that describe the movements and actions of the tiger in the cage and in the wild. Arrange them in two columns.(ii) Find the words that describe the two places, and arrange them in two columns. Now try to share ideas about how the poet uses words and images to contrast the two situations.',
                    'Q2: Notice the use of a word repeated in lines such as these:(i) On pads of velvet quiet,In his quiet rage.(ii) And stares with his brilliant eyes At the brilliant stars.What do you think is the effect of this repetition?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
