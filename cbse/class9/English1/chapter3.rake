
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'DEBORAH COWLEY', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Sound of Music", audio_link: 'chapter1.mp3')
        sections = ['RUSH hour crowds jostle for position on the underground train platform. A slight girl, looking younger than her seventeen years, was nervous yet excited as she felt the vibrations of the approaching train. It was her first day at the prestigious Royal Academy of Music in London and daunting enough for any teenager fresh from a Scottish farm. But this aspiring musician faced a bigger challenge than most: she was profoundly deaf.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How old was Evelyn when she went to the Royal Academy of Music?',
                    'Q2:  When was her deafness first noticed? When was it confirmed?',
                    'Q3:  Who helped her to continue with music? What did he do and say?',
                    'Q4:  Name the various places and causes for which Evelyn performs.',
                    'Q5:  How does Evelyn hear music?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
