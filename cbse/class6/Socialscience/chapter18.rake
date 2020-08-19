 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "URBAN ADMINISTRATION", audio_link: 'chapter1.mp3')

        sections = ['One lazy Sunday afternoon Mala and her friends Shankar, Jehangir and Rehana were playing a game of cricket in the street.Shankar had bowled a good over and although he nearly managed to get Rehana out, she was still playing. Frustrated, he bowled a short ball and hoped she would hit it for an easy catch. Instead, Rehana hit the ball so hard and so high that the street light broke.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Why did the children go to Yasmin Khala's house?",
                    "Q2:  List four ways in which the work of the Municipal Corporation affects the life of a city-dweller.",
                    "Q3:  Who is a Municipal Councillor?",
                    "Q4:  What did Gangabai do and why?",
                    "Q5:  How does the Municipal Corporation earn the money to do its work?",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
