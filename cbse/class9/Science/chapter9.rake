
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "FORCE AND LAWS OF MOTION", audio_link: 'chapter1.mp3')
        sections = ['In the previous chapter, we described the motion of an object along a straight line in terms of its position, velocity and acceleration. We saw that such a motion can be uniform or non-uniform. We have not yet discovered what causes the motion. Why does the speed of an object change with time? Do all motions require a cause? If so, what is the nature of this cause? In this chapter we shall make an attempt to quench all such curiosities.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  An object experiences a net zero external unbalanced force. Is it possible for the object to be travelling with a non-zero velocity? If yes, state the conditions that must be placed on the magnitude and direction of the velocity. If no, provide a reason.',
                    'Q2:  When a carpet is beaten with a stick, dust comes out of it.Explain.',
                    'Q3:  Why is it advised to tie any luggage kept on the roof of a bus with a rope?',
                    'Q4:  A batsman hits a cricket ball which then rolls on a level ground.After covering a short distance, the ball comes to rest. The ball slows to a stop because (a) the batsman did not hit the ball hard enough.(b) velocity is proportional to the force exerted on the ball.(c) there is a force on the ball opposing the motion.(d) there is no unbalanced force on the ball, so the ball would want to come to rest.',
                    'Q5:  A truck starts from rest and rolls down a hill with a constant acceleration. It travels a distance of 400 m in 20 s. Find its acceleration. Find the force acting on it if its mass is 7 tonnes (Hint: 1 tonne = 1000 kg.)',
                    'Q6:  A stone of 1 kg is thrown with a velocity of 20 m s–1 across the frozen surface of a lake and comes to rest after travelling a distance of 50 m. What is the force of friction between the stone and the ice?',
                    'Q7:  An automobile vehicle has a mass of 1500 kg. What must be the force between the vehicle and road if the vehicle is to be stopped with a negative acceleration of 1.7 m s–2?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
