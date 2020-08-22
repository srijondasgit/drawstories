
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ROBIN KLEIN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Amanda!", audio_link: 'chapter1.mp3')
        sections = ['Don’t bite your nails, Amanda!',
                    'Don’t hunch your shoulders, Amanda!',
                    'Stop that slouching and sit up straight,',
                    'Amanda!',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How old do you think Amanda is? How do you know this?',
                    'Q2:  Who do you think is speaking to her?',
                    'Q3:  Why are Stanzas 2, 4 and 6 given in parenthesis?',
                    'Q4:  Who is the speaker in Stanzas 2, 4 and 6? Do you think this speaker is listening to the speaker in Stanzas 1, 3, 5, and 7?',
                    'Q5:  What could Amanda do if she were a mermaid?',
                    'Q6:  Is Amanda an orphan? Why does she say so?',
                         ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
