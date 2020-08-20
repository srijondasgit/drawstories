
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'OSCAR WILDE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Happy Prince", audio_link: 'chapter1.mp3')
        sections = ['HIGH above the city, on a tall column, stood the statue of the Happy Prince. He was gilded all over with thin leaves of fine gold, for eyes he had two bright sapphires, and a large red ruby glowed on his sword hilt.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why do the courtiers call the prince ‘the Happy Prince’? Is he really happy? What does he see all around him?',
                    'Q2:  Why does the Happy Prince send a ruby for the seamstress? What does the swallow do in the seamstress’ house?',
                    'Q3:  For whom does the prince send the sapphires and why?',
                    'Q4:  What does the swallow see when it flies over the city?',
                    'Q5:  Why did the swallow not leave the prince and go to Egypt?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
