
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['Your elders might have cautioned you against touching an electrical appliance with wet hands. But do you know why it is dangerous to touch an electrical appliance with wet hands?',
                    'We have learnt earlier that the materials, which allow electric current to pass through them, are good conductors of electricity. On the other hand, materials, which do not allow electric current to pass through them easily, are poor conductors of electricity.',
                    'In Class VI, we made a tester (Fig.14.1) to test whether a particular material allows the electric current to pass through it or not. Do you recall how the tester helped us in deciding that?',
                    'We found that metals such as copper and aluminium conduct electricity whereas materials such as rubber,plastic and wood do not conduct electricity. However, so far we have used our tester to test materials which were in solid state. But what about liquids? Do liquids also conduct electricity? Let us find out.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  ',
                    'Q2:  ',
                    'Q3:  ',
                    'Q4:  ',
                    'Q5:  ',
                    'Q6:  ',
                    'Q7:  ',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
