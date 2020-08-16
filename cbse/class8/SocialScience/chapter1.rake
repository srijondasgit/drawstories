
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "How, When and Where", audio_link: 'chapter1.mp3')
        sections = ['There was a time when historians were fascinated with dates. There were heated debates about the dates on which rulers were crowned or battles were fought. In the common-sense notion, history was synonymous with dates. You may have heard people say, “I find history boring because it is all about memorising dates.” Is such a conception true? History is certainly about changes that occur over time. It is about finding out how things were in the past and how things have changed. As soon as we compare the past with the present we refer to time, we talk of “before” and “after”.',
                    'Please refer your text book for the rest of the course',
                   ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is the problem with the periodisation of Indian history that James Mill offers?',
                    'Q2:  Why did the British preserve official documents?',
                    'Q3:  How will the information historians get from old newspapers be different from that found in police reports?',
                    'Q4:  Can you think of examples of surveys in your world today? Think about how toy companies get information about what young people enjoy playing with or how the government finds out about the number of young people in school. What can a historian derive from such surveys?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
