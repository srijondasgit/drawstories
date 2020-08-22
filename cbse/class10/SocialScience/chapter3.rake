
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "LIVELIHOODS, ECONOMIES AND SOCIETIES", audio_link: 'chapter1.mp3')
        sections = ['When we talk of ‘globalisation’ we often refer to an economic system that has emerged since the last 50 years or so. But as you will see in this chapter, the making of the global world has a long history – of trade, of migration, of people in search of work, the movement of capital, and much else. As we think about the dramatic and visible signs of global interconnectedness in our lives today, we need to understand the phases through which this world in which we live has emerged.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Give two examples of different types of global exchanges which took place before the seventeenth century, choosing one example from Asia and one from the Americas.',
                    'Q2:  Explain how the global transfer of disease in the pre-modern world helped in the colonisation of the Americas.',
                    'Q3:  Give two examples from history to show the impact of technology on food availability.',
                    'Q4:  What is meant by the Bretton Woods Agreement?',
                    'Q5:  Imagine that you are an indentured Indian labourer in the Caribbean. Drawing from the details in this chapter, write a letter to your family describing your life and feelings.',
                    'Q6:  Explain the causes of the Great Depression.',
                    'Q7:  Explain what is referred to as the G-77 countries. In what ways can G-77 be seen as a reaction to the activities of the Bretton Woods twins?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
