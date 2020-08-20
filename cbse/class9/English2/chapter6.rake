
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'HARSH MANDER', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Weathering the Storm in Ersama", audio_link: 'chapter1.mp3')
        sections = ['ON 27 October 1999, seven years after his mother’s death,Prashant had gone to the block headquarters of Ersama, a small town in coastal Orissa, some eighteen kilometres from his village,to spend the day with a friend. In the evening, a dark and menacing storm quickly gathered. Winds beat against the houses with a speed and fury that Prashant had never witnessed before.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What havoc has the super cyclone wreaked in the life of the people of Orissa?',
                    'Q2:  How has Prashant, a teenager, been able to help the people of his village?',
                    'Q3:  How have the people of the community helped one another? What role do the women of Kalikuda play during these days?',
                    'Q4:  Why do Prashant and other volunteers resist the plan to set up institutions for orphans and widows? What alternatives do they consider?',
                    'Q5:  Do you think Prashant is a good leader? Do you think young people can get together to help people during natural calamities?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
