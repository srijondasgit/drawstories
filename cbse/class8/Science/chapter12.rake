
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Friction", audio_link: 'chapter1.mp3')
        sections = ['You might have seen a driver of a car or a truck slowing down the vehicle at a traffic signal. You, too, slow down your bicycle whenever needed by applying brakes. Have you ever thought why a vehicle slows down when brakes are applied? Not only vehicles, any object, moving over the surface of another object slows down when no external force is applied on it. Finally it stops. Have you not seen a moving ball on the ground stopping after some time? Why do we slip when we step on a banana peel (Fig. 12.1)? Why is it difficult to walk on a smooth and wet floor?',
                    'You will find the answers to such questions in this chapter.',
                    '   You saw that if you apply the force along the left, friction acts along the right. If you apply the force along the right, the friction acts along the left direction. In both cases the force opposes the motion of the book. The force of friction always opposes the applied force.',
                    'In the above activity, the force of friction acts between the surface of the book and the surface of the table.',
                    'Is the friction the same for all the surfaces? Does it depend on the smoothness of the surfaces? Let us find out.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Suppose your writing desk is tilted a little. A book kept on it starts sliding down. Show the direction of frictional force acting on it.',
                    'Q2:  You spill a bucket of soapy water on a marble floor accidently. Would it make it easier or more difficult for you to walk on the floor? Why?',
                    'Q3:  Explain why sportsmen use shoes with spikes.',
                    'Q4:  Iqbal has to push a lighter box and Seema has to push a similar heavier box on the same floor. Who will have to apply a larger force and why?',
                    'Q5:  Explain why the sliding friction is less than the static friction.',
                    'Q6:  Give examples to show that friction is both a friend and a foe.',
                    'Q7:  Explain why objects moving in fluids must have special shapes.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
