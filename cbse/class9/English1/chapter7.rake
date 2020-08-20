
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Truly Beautiful Mind", audio_link: 'chapter1.mp3')
        sections = ['ALBERT Einstein was born on 14 March 1879 in the German city of Ulm, without any indication that he was destined for greatness. On the contrary, his mother thought Albert was a freak. To her, his head seemed much too large.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What did Einstein call his desk drawer at the patent office? Why?',
                    'Q2:  Why did Einstein write a letter to Franklin Roosevelt?',
                    'Q3:  How did Einstein react to the bombing of Hiroshima and Nagasaki?',
                    'Q4:  Why does the world remember Einstein as a “world citizen”?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
