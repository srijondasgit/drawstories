
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'COATES KINNEY', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Rain on the Roof", audio_link: 'chapter1.mp3')
        sections = ['When the humid shadows hover',
                    'Over all the starry spheres',
                    'And the melancholy darkness',
                    'Gently weeps in rainy tears,',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What does the poet like to do when it rains?',
                    'Q2:  What is the single major memory that comes to the poet? Who are the “darling dreamers” he refers to?',
                    'Q3:  Is the poet now a child? Is his mother still alive?',
                    'Q4:  When you were a young child, did your mother tuck you in, as the poet’s did?',
                    'Q5:  Do you like rain? What do you do when it rains steadily or heavily as described in the poem?',
                    'Q6:  Does everybody have a cosy bed to lie in when it rains? Look around you and describe how different kinds of people or animals spend time, seek shelter etc. during rain.',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
