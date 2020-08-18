
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Tale of Two Birds",
                    audio_link: 'chapter1.mp3')
        sections = [   "THERE once lived a bird and her two new-born babies in a forest. They had a nest in a tall, shady tree and there the mother bird took care of her little ones day and night.",
                    'Please refer your text book for the rest of the course',
                    ] 
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  How did the two baby birds get separated? ",
                    "Q2:  Where did each of them find a home?",
                    "Q3:  What did the first bird say to the stranger? ",
                    "Q4:  What did the second bird say to him?",
                    "Q5:  How did the rishi explain the different ways in which the birds behaved?",
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
