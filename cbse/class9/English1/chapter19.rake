
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Kathmandu", audio_link: 'chapter1.mp3')
        sections = ['I GET a cheap room in the centre of town and sleep for hours. The next morning, with Mr Shah’s son and nephew, I visit the two temples in Kathmandu that are most sacred to Hindus and Buddhists',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Name the two temples the author visited in Kathmandu',
                    'Q2:  The writer says, “All this I wash down with Coca Cola.” What does ‘all this’ refer to?',
                    'Q3:  What does Vikram Seth compare to the quills of a porcupine?',
                    'Q4:  Name five kinds of flutes.',
                    'Q5:  What difference does the author note between the flute seller and the other hawkers?',
                    'Q6:  What is the belief at Pashupatinath about the end of Kaliyug?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
