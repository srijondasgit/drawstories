
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JAMES KIRKUP', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "No Men Are Foreign", audio_link: 'chapter1.mp3')
        sections = ['Remember, no men are strange, no countries foreign',
                    'Beneath all uniforms, a single body breathes',
                    'Like ours: the land our brothers walk upon',
                    'Is earth like this, in which we all shall lie.',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  “Beneath all uniforms . ..” What uniforms do you think the poet is speaking about?',
                    'Q2:  How does the poet suggest that all people on earth are the same?',
                    'Q3:  In stanza 1, find five ways in which we all are alike. Pick out the words.',
                    'Q4:  How many common features can you find in stanza 2? Pick out the words.',
                    'Q5:  “...whenever we are told to hate our brothers...” When do you think this happens? Why? Who ‘tells’ us? Should we do as we are told at such times?What does the poet say?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
