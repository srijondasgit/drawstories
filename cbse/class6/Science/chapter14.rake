 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "WATER", audio_link: 'chapter1.mp3')

        sections = ['Suppose for some reason your family gets only one bucket of water everyday for a week.Imagine what would happen? Would you be able to cook, clean utensils, wash clothes or bathe? What are the other activities you would not be able to do? What would happen if we do not have easy access to water for a long period of time?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Suppose you want to dry your school uniform quickly. Would spreading it near an anghiti or heater help? If yes, how?",
                    "Q2: Take out a cooled bottle of water from refrigerator and keep it on a table. After some time you notice a puddle of water around it. Why?",
                    "Q3: To clean their spectacles, people often breathe out on glasses to make them wet. Explain why the glasses become wet.",
                    "Q4: How are clouds formed?",
                    "Q5: When does a drought occur?",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
