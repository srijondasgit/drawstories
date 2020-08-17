
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Why Do We Need a Parliament?", audio_link: 'chapter1.mp3')
        sections = ['We in India pride ourselves on being a democracy. Here we will try and understand the relation between the ideas of participation in decision-making and the need for all democratic governments to have the consent of their citizens. It is these elements that together make us a democracy and this is best expressed in the institution of the Parliament. In this chapter, we will try to see how the Parliament enables citizens of India to participate in decision making and control the government, thus making it the most important symbol of Indian democracy and a key feature of the Constitution.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why do you think our national movement supported the idea that all adults have a right to vote?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
