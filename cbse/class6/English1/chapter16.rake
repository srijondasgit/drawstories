
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed ', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Game of Chance", 
                     audio_link: 'chapter1.mp3')
        sections = ['EVERY year on the occasion of Eid, there was a fair in our village. Eid was celebrated only one day but the fair lasted many days. Tradesmen from far and wide came there with all kinds of goods to sell. You could buy anything from a small pin to a big buffalo.', 
                    
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Why do you think Rasheed’s uncle asked him not to buy anything in his absence?",
                    "Q2:  Why was the shop called ‘Lucky Shop’?",
                    "Q3:  An old man won a clock and sold it back to the shopkeeper.How much money did he make? ",
                    "Q4:  How many prizes did the boy win? What were they?",
                    "Q5:  Why was Rasheed upset?",
                    "Q6:  In what way did the shopkeeper make a fool of Rasheed?",
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
