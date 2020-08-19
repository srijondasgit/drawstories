
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'A story from The Panchatantra', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Friendly Mongoose", audio_link: 'chapter1.mp3')

        sections = ["ONCE a farmer and his wife lived in a village with their small farmer said to his wife one day. “When our son grows up, he will need a companion. This pet will be our son’s companion.” His wife liked the idea.",
                 'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Why did the farmer bring a baby mongoose into the house? ",
                    "Q2:  Why didn’t the farmer’s wife want to leave the baby alone with the mongoose?",
                    "Q3:  What was the farmer’s comment on his wife’s fears?",
                    "Q4:  Why did the farmer’s wife strike the mongoose with her basket?",
                    "Q5:  Did she repent her hasty action? How does she show her repentance?",
                     
                        ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
