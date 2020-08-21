
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "WORK AND ENERGY", audio_link: 'chapter1.mp3')
        sections = ['In the previous few chapters we have talked about ways of describing the motion of objects, the cause of motion and gravitation. Another concept that helps us understand and interpret many natural phenomena is ‘work’. Closely related to work are energy and power.In this chapter we shall study these concepts.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  A battery lights a bulb. Describe the energy changes involved in the process.',
                    'Q2:  Certain force acting on a 20 kg mass changes its velocity from 5 m s–1 to 2 m s–1. Calculate the work done by the force',
                    'Q3:  A mass of 10 kg is at a point A on a table. It is moved to a point B. If the line joining A and B is horizontal, what is the work done on the object by the gravitational force? Explain your answer.',
                    'Q4:  The potential energy of a freely falling object decreases progressively. Does this violate the law of conservation of energy? Why?',
                    'Q5:  What are the various energy transformations that occur when you are riding a bicycle?',
                    'Q6:  Does the transfer of energy take place when you push a huge rock with all your might and fail to move it? Where is the energy you spend going?',
                    'Q7:  A certain household has consumed 250 units of energy during a month. How much energy is this in joules?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
