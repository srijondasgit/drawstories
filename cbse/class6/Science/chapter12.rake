 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "ELECTRICITY AND CIRCUITS", audio_link: 'chapter1.mp3')

        sections = ['We use electricity for many purposes to make our tasks easier. For example, we use electricity to operate pumps that lift water from wells or from ground level to the roof top tank. What are other purposes for which you use electricity? List some of them in your notebook.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is the purpose of using an electric switch? Name some electrical gadgets that have switches built into them.",
                    "Q2: Using the conduction tester on an object it was found that the bulb begins to glow. Is that object a conductor or an insulator? Explain.",
                    "Q3: Why should an electrician use rubber gloves while repairing an electric switch at your home? Explain.",
                    "Q4: The handles of the tools like screwdrivers and pliers used by electricians for repair work usually have plastic or rubber covers on them. Can you explain why?",
                    
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
