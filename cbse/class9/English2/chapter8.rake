
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ZAN GAUDIOSO', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A House Is Not a Home", audio_link: 'chapter1.mp3')
        sections = ['MY first year of high school felt awkward. After leaving junior high at the head of my class with all the seniority the upper grade levels could afford me, it felt strange starting over as a freshman.The school was twice as big as my old school, and to make matters worse, my closest friends were sent to a different high school. I felt very isolated.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What does the author notice one Sunday afternoon? What is his mother’s reaction? What does she do?',
                    'Q2:  Why does he break down in tears after the fire?',
                    'Q3:  Why is the author deeply embarrassed the next day in school? Which words show his fear and insecurity?',
                    'Q4: The cat and the author are very fond of each other. How has this been shown in the story? Where was the cat after the fire? Who brings it back and how?',
                    'Q5:  What actions of the schoolmates change the author’s understanding of life and people, and comfort him emotionally? How does his loneliness vanish and how does he start participating in life?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
