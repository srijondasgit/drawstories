 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "BODY MOVEMENTS", audio_link: 'chapter1.mp3')

        sections = ['Sit absolutely still. Observe the movements taking place in your body. You must be blinking your eyes, time to time. Observe the movements in your body as you breathe. There are so many movements that happen in our bodies.When you are writing in your notebook which part of the body are you moving? Or, when you turn and look at your friend? Different parts of your body move while you remain at the same place, in these examples. You also move from one place to another — you get up and go to your teacher or to the school compound, or go home after school. You walk, run, skip, jump and move from place to place.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is a ball and socket joint?",
                    "Q2: Which of the skull bones are movable?",
                    "Q3: Why can our elbow not move backwards?",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
