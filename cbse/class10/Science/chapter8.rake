
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "How do Organisms Reproduce?", audio_link: 'chapter1.mp3')
        sections = ['Before we discuss the mechanisms by which organisms reproduce,let us ask a more basic question – why do organisms reproduce? After all, reproduction is not necessary to maintain the life of an individual organism, unlike the essential life processes such as nutrition, respiration, or excretion. On the other hand, if an individual organism is going to create more individuals, a lot of its energy will be spent in the process. So why should an individual organism waste energy on a process it does not need to stay alive? It would be interesting to discuss the possible answers in the classroom!',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is the importance of DNA copying in reproduction?',
                    'Q2:  Why is variation beneficial to the species but not necessarily for the individual?',
                    'Q3:  How does binary fission differ from multiple fission?',
                    'Q4:  How will an organism be benefited if it reproduces through spores?',
                    'Q5:  What are the advantages of sexual reproduction over asexual reproduction?',
                    'Q6:  What are the functions performed by the testis in human beings?',
                    'Q7:  Why does menstruation occur?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
