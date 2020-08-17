
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Understanding Our Criminal Justice System", audio_link: 'chapter1.mp3')
        sections = ['When we see someone violating the law, we immediately think of informing the police. You might have seen, either in real life or in the movies, police officers filing reports and arresting persons. Because of the role played by the police in arresting persons, we often get confused and think that it is the police who decide whether a person is guilty or not. This, however, is far from true. After a person is arrested, it is a court of law that decides whether the accused person is guilty or not. According to the Constitution, every individual charged of a crime has to be given a fair trial.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  State two reasons why you believe that different persons need to play different roles as part of the criminal justice system.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
