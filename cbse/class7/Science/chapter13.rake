 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Motion and Time", audio_link: 'chapter1.mp3')

        sections = ['In Class VI, you learnt about different types of motions. You learnt that a motion could be along a straight line, it could be circular or periodic. Can you recall these three types of motions? Table 13.1 gives some common examples of motions. Identify the type of motion in each case.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: A simple pendulum takes 32 s to complete 20 oscillations. What is the time period of the pendulum?",
                    "Q2: The distance between two stations is 240 km. A train takes 4 hours to cover this distance. Calculate the speed of the train.",
                    "Q3: The odometer of a car reads 57321.0 km when the clock shows the time 08:30 AM. What is the distance moved by the car, if at 08:50 AM, the odometer reading has changed to 57336.0 km? Calculate the speed of the car in km/min during this time. Express the speed in km/h also.",
                    "Q4: Salma takes 15 minutes from her house to reach her school on a bicycle. If the bicycle has a speed of 2 m/s, calculate the distance between her house and the school.",
                   
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
