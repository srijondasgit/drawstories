
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'OGDEN NASH', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Tale of Custard the Dragon", audio_link: 'chapter1.mp3')
        sections = ['Belinda lived in a little white house,',
                    'With a little black kitten and a little grey mouse,',
                    'And a little yellow dog and a little red wagon,',
                    'And a realio, trulio, little pet dragon.',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Who are the characters in this poem? List them with their pet names',
                    'Q2:  Why did Custard cry for a nice safe cage? Why is the dragon called “cowardly dragon”?',
                    'Q3:  “Belinda tickled him, she tickled him unmerciful...” Why?',
                    'Q4: The poet has employed many poetic devices in the poem. For example: “Clashed his tail like iron in a dungeon” — the poetic device here is a simile. Can you, with your partner, list some more such poetic devices used in the poem?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
