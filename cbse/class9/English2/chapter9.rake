
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'BILL BRYSON', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Accidental Tourist", audio_link: 'chapter1.mp3')
        sections = ['OF all the things I am not very good at, living in the real world is perhaps the most outstanding. I am constantly filled with wonder the number of things that other people do without any evident difficulty that are pretty much beyond me. I cannot tell you the number of times that I have gone looking for the lavatory in a cinema, for instance, and ended up standing in an alley on the wrong side of a selflocking door. My particular specialty now is returning to hotel desks two or three times a day and asking what my room number is. I am, in short, easily confused.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Bill Bryson says, “I am, in short, easily confused.” What examples has he given to justify this?',
                    'Q2:  What happens when the zip on his carry-on bag gives way?',
                    'Q3:  Why is his finger bleeding? What is his wife’s reaction?',
                    'Q4:  How does Bill Bryson end up in a “crash position” in the aircraft?',
                    'Q5:  Why are his teeth and gums navy blue?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
