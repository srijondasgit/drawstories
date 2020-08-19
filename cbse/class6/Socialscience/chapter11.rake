 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "NEW EMPIRES AND KINGDOMS", audio_link: 'chapter1.mp3')

        sections = ['Arvind was supposed to be acting as Samudragupta, a famous ruler of a dynasty known as the Guptas. We know about Samudragupta from a long inscription, actually a poem in Sanskrit, composed by his court poet, Harishena nearly1700 years ago. This was inscribed on the Ashokan pillar at Allahabad.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    
                    "Q1: Mention three authors who wrote about Harshavardhana.",
                    "Q2: What changes do you find in the army at this time?",
                    "Q3: What were the new administrative arrangements during this period?",
                    "Q4: What do you think Arvind would have to do if he was acting as Samudragupta?",
                    "Q5: Do you think ordinary people would have read and understood the prashastis? Give reasons for your answer.",
            
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
