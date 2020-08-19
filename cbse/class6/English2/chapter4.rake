
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The old-clock-shop", audio_link: 'chapter1.mp3')
        sections = [   "CHRISTMAS Eve had arrived. As last-minute shoppers were going home, a thick, white sheet of snow lay over Salt Lake City, USA. Yet the lights were still burning in the old-clock shop, as Ray, its old, deaf owner, worked on a clock he had sold that day.",
                    'Please refer your text book for the rest of the course',
                    ] 
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What made Ray think the visitor was not really a shopper? ",
                    "Q2:  Why do you think he had come to the shop?",
                    "Q3:  How did Ray communicate with him?",
                    "Q4:  What do you think the man said to his friend who waited at the door?",
                    "Q5:   Ray was not a pawnbroker. Why then did he lend money to people in exchange for their old watches and clocks?",
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
