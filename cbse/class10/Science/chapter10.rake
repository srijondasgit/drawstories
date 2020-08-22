
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Light – Reflection and Refraction", audio_link: 'chapter1.mp3')
        sections = ['We see a variety of objects in the world around us. However, we are unable to see anything in a dark room. On lighting up the room, things become visible. What makes things visible? During the day, the sunlight helps us to see objects. An object reflects light that falls on it. This reflected light, when received by our eyes, enables us to see things. We are able to see through a transparent medium as light is transmitted through it. There are a number of common wonderful phenomena associated with light such as image formation by mirrors, the twinkling of stars, the beautiful colours of a rainbow, bending of light by a medium and so on. A study of the properties of light helps us to explore them.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Define the principal focus of a concave mirror.',
                    'Q2:  The radius of curvature of a spherical mirror is 20 cm. What is its focal length?',
                    'Q3:  Name a mirror that can give an erect and enlarged image of an object.',
                    'Q4:  Why do we prefer a convex mirror as a rear-view mirror in vehicles?',
                    'Q5:  A ray of light travelling in air enters obliquely into water. Does the light ray bend towards the normal or away from the normal? Why?',
                    'Q6:  Light enters from air to glass having refractive index 1.50. What is the speed of light in the glass? The speed of light in vacuum is 3 × 108 m s–1 .',
                    'Q7:  Find out, from Table 10.3, the medium having highest optical density.Also find the medium with lowest optical density.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
