 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "UNDERSTANDING DIVERSITY", audio_link: 'chapter1.mp3')

        sections = ['Three children around your age have drawn the figures above. Use the empty box to draw your human figure. Is your drawing similar to any of the others? The chances are that your drawing is quite different from the other three, which you can see are quite different from each other. This is because each one of us has a unique drawing style. We not only dont look exactly like each other but also differ in terms of the language we speak, our cultural backgrounds, the religious rituals we observe and, of course the way we draw!', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Draw up a list of the different festivals celebrated in your locality. Which of these celebrations are shared by members of different regional and religious communities?",
                    "Q2:  What do you think living in India with its rich heritage of diversity adds to your life?",
                    "Q3:  Do you think the term unity in diversity is an appropriate term to describe India? What do you think Nehru is trying to say about Indian unity in the sentence quoted above from his book The Discovery of India?",
                    "Q4:  Underline the line in the poem sung after the Jallianwalla massacre, which according to you, reflects India's essential unity.",
                    "Q5:  Choose another region in India and do a similar study of the historical and geographical factors that influence the diversity found there. Are these historical and geographical factors connected to each other? How?",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
