
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['The world is largely known through the senses. The sense of sight is one of the most important senses. Through it we see mountains, rivers, trees, plants, chairs, people and so many other things around us. We also see clouds, rainbows and birds flying in the sky. At night we see the moon and the stars. You are able to see the words and sentences printed on this page. How is seeing made possible?',
                    '16.1 What makes Things VisibleHave you ever thought how we see the various objects? You may say that eyes see the objects. But, can you see an object in the dark? It means that eyes alone cannot see any object. It is only when light from an object enters our eyes that we see the object. The light may have been emitted by the object, or may have been reflected by it.',
                    'You learnt in Class VII that a polished or a shiny surface can act as a mirror. A mirror changes the direction of light that falls on it. Can you tell in which direction the light falling on a surface will be reflected? Let us find out.',
                    '',
                    '',
                    '16.2 Laws of Reflection',
                    'Draw lines showing the position of the plane mirror, the incident ray and the reflected ray on the paper with the help of your friends. Remove the mirror and the comb. Draw a line making an angle of 90o to the line representing the mirror at the point where the incident ray strikes the mirror. This line is known as the normal to the reflecting surface at that point (Fig. 16.2). The anglebetween the normal and incident ray is called the angle of incidence (∠i). The angle between the normal and the reflected ray is known as the angle of reflection (∠r) (Fig. 16.3). Measure the angle of incidence and the angle of reflection. Repeat the activity several times by changing the angle of incidence. Enter the data in Table 16.1.',
                    '',
                    '',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Suppose you are in a dark room. Can you see objects in the room? Can you see objects outside the room. Explain.',
                    'Q2:  Differentiate between regular and diffused reflection. Does diffused reflection mean the failure of the laws of reflection?',
                    'Q3:  State the laws of reflection.',
                    'Q4:  Describe an activity to show that the incident ray, the reflected ray and the normal at the point of incidence lie in the same plane.',
                    'Q5:  Angle of incidence is equal to the angle of reflection (a) Always (b) Sometimes (c) Under special conditions (d) Never',
                    'Q6:  Describe the construction of a kaleidoscope.',
                    'Q7:  Gurmit wanted to perform Activity 16.8 using a laser torch. Her teacher advised her not to do so. Can you explain the basis of the teachers advise?',
                    'Q8:  Explain how you can take care of your eyes.',
                    'Q9:  What is the angle of incidence of a ray if the reflected ray is at an angle of 90° to the incident ray?',
                    'Q10:  How many images of a candle will be formed if it is placed between two parallel plane mirrors separated by 40 cm?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
