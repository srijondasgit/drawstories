
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'RUSKIN BOND', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: " The Banyan Tree ", audio_link: 'chapter1.mp3')

             sections = ['THOUGH the house and grounds belonged to my grandparents, the magnificent old banyan tree was mine — chiefly because Grandfather, at sixty-five, could no longer climb it.', 
                   
                         'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What did the cobra and the mongoose do, to show their readiness for the fight?",
                    "Q2:  Who were the other two spectators? What did they do? (Did they watch, or did they join in the fight?)",
                    "Q3:  What happened to the crow in the end? ",
                    "Q4:  What did the myna do finally?",
                    "Q5:  The word ‘round’ usually means a kind of shape. What is its meaning in the story?",
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
