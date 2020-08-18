
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'INDIRA DAVID', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Strange Wrestling Match",
                    audio_link: 'chapter1.mp3')
        sections = [   "THERE was once a wrestler called Vijay Singh. A tall man with massive shoulders and muscular arms, he towered over others like a giant. Vijay Singh, people said, was a born wrestler and could beat all other wrestlers in the world.",
                    'Please refer your text book for the rest of the course',
                    ] 
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What was Vijay Singh’s weakness? Which awkward situation did it push him into? ",
                    "Q2:  Was the old woman’s gift to Vijay Singh eccentric? Why?",
                    "Q3:  Why did Vijay Singh ask the ghost disguised as Natwar to come closer? ",
                    "Q4:  What made the ghost speechless? Why?",
                    "Q5:  Why did Vijay Singh say “Appearances can be deceptive”?",
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
