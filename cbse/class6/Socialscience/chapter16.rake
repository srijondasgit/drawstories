 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "PANCHAYATI RAJ", audio_link: 'chapter1.mp3')

        sections = ['Its a special day today! Everyone is rushing to get to the Gram Sabha!Do you know why? Because the Gram Sabha is holding its first meeting after theelection of the new Gram Panchayat.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What problem did the villagers in Hardas village face? What did they do to solve this problem? ",
                    "Q2:  What, in your opinion, is the importance of the Gram Sabha? Do you think all members should attend Gram Sabha meetings? Why?",
                    "Q3:  What is the link between a Gram Sabha and a Gram Panchayat? ",
                    "Q4:  What is the difference between a Gram Sabha and a Gram Panchayat?",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
