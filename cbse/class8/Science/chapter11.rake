
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['In Class VII, you have learnt how objects move. Do you recall how we can decide whether an object is moving faster than the other? What does the distance moved by an object in unit time indicate? You also know that a moving object like a ball rolling on the ground slows down. Sometimes it may change its direction of motion. It is also possible that the ball may slow down and also change its direction. Did you ever wonder what makes an object to slow down or go faster, or change its direction of motion?',
                    'Let us recall some of our everyday experiences. What do you do to make a football move? What do you do to make a moving ball move faster? How does a goalkeeper stop a ball? How do fielders stop a ball hit by a batsman? A hockey player changes the direction of the moving ball with(a)a flick of the stick (Fig. 11.1). In all these situations the ball is either made to move faster or slower or its direction of motion is changed.',
                    'We often say that a force has been applied on a ball when it is kicked, pushed, thrown or flicked. What is a force? What can it do to bodies on which it is applied? We shall seek answers to such questions in this chapter.',
                    '11.1 Force – A Push or a Pull Actions like picking, opening, shutting, kicking, hitting, lifting, flicking, pushing, pulling are often used to describe certain tasks. Each of these actions usually results in some kind of change in the motion of an object. Can these terms be replaced with one or more terms? Let us find out.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Give two examples each of situations in which you push or pull to change the state of motion of objects.',
                    'Q2:  Give two examples of situations in which applied force causes a change in the shape of an object.',
                    'Q3:  A blacksmith hammers a hot piece of iron while making a tool. How does the force due to hammering affect the piece of iron?',
                    'Q4:  An inflated balloon was pressed against a wall after it has been rubbed with a piece of synthetic cloth. It was found that the balloon sticks to the wall. What force might be responsible for the attraction between the balloon and the wall?',
                    'Q5:  Name the forces acting on a plastic bucket containing water held above ground level in your hand. Discuss why the forces acting on the bucket do not bring a change in its state of motion.',
                    'Q6:  A rocket has been fired upwards to launch a satellite in its orbit. Name the two forces acting on the rocket immediately after leaving the launching pad.',
                    'Q7:  When we press the bulb of a dropper with its nozzle kept in water, air in the dropper is seen to escape in the form of bubbles. Once we release the pressure on the bulb, water gets filled in the dropper. The rise of water in the dropper is due to - (a) pressure of water (b) gravity of the earth (c) shape of rubber bulb (d) atmospheric pressure',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
