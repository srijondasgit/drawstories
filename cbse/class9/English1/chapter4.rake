
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'SUBRAMANIA BHARATI [translated from the Tamil by A.K. Ramanujan]', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Wind", audio_link: 'chapter1.mp3')
        sections = ['Wind, come softly.',
                    'Don’t break the shutters of the windows.',
                    'Don’t scatter the papers.',
                    'Don’t throw down the books on the shelf.',
                    'There, look what you did — you threw them all down.',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What are the things the wind does in the first stanza?',
                    'Q2:  What does the poet say the wind god winnows?',
                    'Q3:  What do the last four lines of the poem mean to you?',
                    'Q4:  How does the poet speak to the wind — in anger or with humour? You must also have seen or heard of the wind “crumbling lives”. What is your response to this? Is it like the poet’s?',
                    'Q5:  The poem you have just read is originally in the Tamil. Do you know any such poems in your language?',
                                     
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
