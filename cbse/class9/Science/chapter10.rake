
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "GRAVITATION", audio_link: 'chapter1.mp3')
        sections = ['In Chapters 8 and 9, we have learnt about the motion of objects and force as the cause of motion. We have learnt that a force is needed to change the speed or the direction of motion of an object. We always observe that an object dropped from a height falls towards the earth. We know that all the planets go around the Sun. The moon goes around the earth. In all these cases, there must be some force acting on the objects, the planets and on the moon. Isaac Newton could grasp that the same force is responsible for all these.This force is called the gravitational force.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How does the force of gravitation between two objects change when the distance between them is reduced to half ?',
                    'Q2:  Gravitational force acts on all objects in proportion to their masses. Why then, a heavy object does not fall faster than a light object?',
                    'Q3:  What is the magnitude of the gravitational force between the earth and a 1 kg object on its surface? (Mass of the earth is 6 × 1024 kg and radius of the earth is 6.4 × 106 m.)',
                    'Q4:  The earth and the moon are attracted to each other by gravitational force. Does the earth attract the moon with a force that is greater or smaller or the same as the force with which the moon attracts the earth? Why?',
                    'Q5:  If the moon attracts the earth, why does the earth not move towards the moon?',
                    'Q6:  What is the importance of universal law of gravitation?',
                    'Q7: What is the acceleration of free fall?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
