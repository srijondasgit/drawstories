 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "THE EARTH IN THE SOLAR SYSTEM", audio_link: 'chapter1.mp3')

        sections = ['How wonderful it is to watch the sky after sunset! One would first notice one or two bright dots shining in the sky. Soon you would see the number increasing.You cannot count them any more. The whole sky is filled with tiny shining objects – some are bright, others dim. It seems as if the sky is studded with diamonds. They all appear to be twinkling. But if you look at them carefully you will notice that some of them do not twinkle as others do. ', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: How does a planet differ from a star?",
                    "Q2: What is meant by the ‘Solar System’?",
                    "Q3: Name all the planets according to their distance from the sun.",
                    "Q4: Why is the Earth called a unique planet?",
                    "Q5: Why do we see only one side of the moon always?",
                    "Q6: What is a Universe?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
