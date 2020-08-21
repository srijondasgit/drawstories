
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "CLIMATE", audio_link: 'chapter1.mp3')
        sections = ['In the last two chapters you have read about the landforms and the drainage of our country. These are the two of the three basic elements that one learns about the natural environment of any area. In this chapter you will learn about the third, that is, the atmospheric conditions that prevail over our country. Why do we wear woollens in December or why it is hot and uncomfortable in the month of May, and why it rains in June - July? The answers to all these questions can be found out by studying about the climate of India.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What are the controls affecting the climate of India?',
                    'Q2:  Why does India have a monsoon type of climate?',
                    'Q3:  Which part of India does experience the highest diurnal range of temperature and why?',
                    'Q4:  Which winds account for rainfall along the Malabar coast?',
                    'Q5:  Define monsoons. What do you understand by “break” in monsoon?',
                    'Q6:  Why is the monsoon considered a unifying bond?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
