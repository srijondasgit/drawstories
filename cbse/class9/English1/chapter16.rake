
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'GIEVE PATEL', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "On Killing a Tree", audio_link: 'chapter1.mp3')
        sections = ['It takes much time to kill a tree,',
                    'Not a simple jab of the knife',
                    'Will do it. It has grown',
                    'Slowly consuming the earth',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Can a “simple jab of the knife” kill a tree? Why not?',
                    'Q2:  How has the tree grown to its full size? List the words suggestive of its life and activity.',
                    'Q3:  What is the meaning of “bleeding bark”? What makes it bleed?',
                    'Q4:  The poet says “No” in the beginning of the third stanza. What does he mean by this?',
                    'Q5:  What is the meaning of “anchoring earth” and “earth cave”?',
                    'Q6:  What does he mean by “the strength of the tree exposed”?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
