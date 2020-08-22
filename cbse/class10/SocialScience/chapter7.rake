
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Federalism", audio_link: 'chapter1.mp3')
        sections = ['In the previous chapter, we noted that vertical division of power among different levels of government is one of the major forms of power- sharing in modern democracies. In this chapter, we focus on this form of power-sharing. It is most commonly referred to as federalism. We begin by describing federalism in general terms. The rest of the chapter tries to understand the theory and practice of federalism in India. A discussion of the federal constitutional provisions is followed by an analysis of the policies and politics that has strengthened federalism in practice. Towards the end of the chapter, we turn to the local government, a new and third tier of Indian federalism.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Locate the following States on a blank outline political map of India: Manipur, Sikkim, Chhattisgarh and Goa.',
                    'Q2:  Identify and shade three federal countries (other than India) on a blank outline political map of the world.',
                    'Q3:  Point out one feature in the practice of federalism in India that is similar to and one feature that is different from that of Belgium.',
                    'Q4:  What is the main difference between a federal form of government and a unitary one? Explain with an example.',
                    'Q5:  State any two differences between the local government before and after the Constitutional amendment in 1992.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
