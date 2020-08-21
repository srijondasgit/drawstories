
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MOTION", audio_link: 'chapter1.mp3')
        sections = ['In everyday life, we see some objects at rest and others in motion. Birds fly, fish swim,blood flows through veins and arteries, and cars move. Atoms, molecules, planets, stars and galaxies are all in motion. We often perceive an object to be in motion when its position changes with time. However, there are situations where the motion is inferred through indirect evidences. For example, we infer the motion of air by observing the movement of dust and the movement of leaves and branches of trees. What causes the of seasons? Is it due to the motion of the earth? If it is true, why don’t we directly perceive the motion of the earth?',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  An athlete completes one round of a circular track of diameter 200 m in 40 s. What will be the distance covered and the displacement at the end of 2 minutes 20 s?',
                    'Q2:  Joseph jogs from one end A to the other end B of a straight 300 m road in 2 minutes 30 seconds and then turns around and jogs 100 m back to point C in another 1 minute. What are Joseph’s average speeds and velocities in jogging (a) from A to B and (b) from A to C?',
                    'Q3:  Abdul, while driving to school, computes the average speed for his trip to be 20 km h–1. On his return trip along the same route, there is less traffic and the average speed is 30 km h–1. What is the average speed for Abdul’s trip?',
                    'Q4:  A motorboat starting from rest on a lake accelerates in a straight line at a constant rate of 3.0 m s–2 for 8.0 s. How far does the boat travel during this time?',
                    'Q5:  A driver of a car travelling at 52 km h–1 applies the brakes and accelerates uniformly in the opposite direction. The car stops in 5 s. Another driver going at 3 km h–1 in another car applies his brakes slowly and stops in 10 s. On the same graph paper, plot the speed versus time graphs for the two cars. Which of the two cars travelled farther after the brakes were applied?',
                    'Q6:  A ball is gently dropped from a height of 20 m. If its velocity increases uniformly at the rate of 10 m s-2, with what velocity will it strike the ground? After what time will it strike the ground?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
