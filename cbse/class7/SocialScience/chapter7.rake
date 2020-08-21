 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "TRIBES, NOMADS AND SETTLED COMMUNITIES", audio_link: 'chapter1.mp3')

        sections = ['You saw in Chapters 2, 3 and 4 how kingdoms rose and fell. Even as this was happening, new arts, crafts and production activities flourished in towns and villages. Over the centuries important political, social and economic developments had taken place. But social change was not the same everywhere, because different kinds of societies evolved differently. It is important to understand how, and why, this happened.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What kinds of exchanges took place between nomadic pastoralists and settled agriculturists?",
                    "Q2: How was the administration of the Ahom state organised?",
                    "Q3: What changes took place in varna-based society?",
                    "Q4: How did tribal societies change after being organisedinto a state?",
                    "Q5: Were the Banjaras important for the economy?",
                    "Q6: In what ways was the history of the Gonds different from that of the Ahoms? Were there any similarities?",
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
