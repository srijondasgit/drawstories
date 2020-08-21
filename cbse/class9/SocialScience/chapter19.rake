
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Poverty as a Challenge", audio_link: 'chapter1.mp3')
        sections = ['This chapter deals with one of the most difficult challenges faced by independent India—poverty. After discussing this multi-dimensional problem through examples, the chapter discusses the way poverty is seen in social sciences. Poverty trends in India and the world are illustrated through the concept of the poverty line. Causes of poverty as well as anti-poverty measures taken by the government are also discussed. The chapter ends with broadening the official concept of poverty into human poverty.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Describe how the poverty line is estimated in India?',
                    'Q2:  Do you think that present methodology of poverty estimation is appropriate?',
                    'Q3:  Describe poverty trends in India since 1973?',
                    'Q4:  WDiscuss the major reasons for poverty in India?',
                    'Q5:  Identify the social and economic groups which are most vulnerable to poverty in India.',
                    'Q6:  Give an account of interstate disparities of poverty in India.',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
