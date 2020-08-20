
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'PHOEBE CARY', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Legend of the Northland", audio_link: 'chapter1.mp3')
        sections = ['Away, away in the Northland,',
                    'Where the hours of the day are few,',
                    'And the nights are so long in winter',
                    'That they cannot sleep them through;',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Which country or countries do you think “the Northland” refers to?',
                    'Q2:  What did Saint Peter ask the old lady for? What was the lady’s reaction?',
                    'Q3:  How did he punish her?',
                    'Q4:  How does the woodpecker get her food?',
                    'Q5:  Do you think that the old lady would have been so ungenerous if she had known who Saint Peter really was? What would she have done then?',
                    'Q6: Is this a true story? Which part of this poem do you feel is the most important?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
