 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "On Equality", audio_link: 'chapter1.mp3')

        sections = ['India is a democracy. In the Class VI book, we looked at the key elements of a democratic government.These include people’s participation, the resolution of conflict, and equality and justice. Equality is a key feature of democracy and influences all aspects of its functioning. In this chapter you will read more about equality – what it is, why it is important in a democracy, and whether or not everyone is equal in India.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: In a democracy why is universal adult franchise important?",
                    "Q2: Re-read the box on Article 15 and state two ways in which this Article addresses inequality?",
                    "Q3: In what ways was Omprakash Valmiki’s experience similar to that of the Ansaris?",
                    "Q4: What do you understand by the term “all persons are equal before the law”? Why do you think it is important in a democracy?",
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
