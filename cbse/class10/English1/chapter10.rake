
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'EI Bsor Ester', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Hundred Dresses-I", audio_link: 'chapter1.mp3')
        sections = ['TODAY, Monday, Wanda Petronski was not in her seat. But nobody, not even Peggy and Madeline, the girls who started all the fun, noticed her absence.Usually Wanda sat in the seat next to the last seat in the last row in Room Thirteen. She sat in the corner of the room where the rough boys who did not make good marks sat, the corner of the room where there was most scuffling of feet, most roars of laughter when anything funny was said, and most mud and dirt on the floor.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How is Wanda seen as different by the other girls? How do they treat her?',
                    'Q2:  How does Wanda feel about the dresses game? Why does she say that she has a hundred dresses?',
                    'Q3:  Why does Maddie stand by and not do anything? How is she different from Peggy? (Was Peggy’s friendship important to Maddie? Why? Which lines in the text tell you this?)',
                    'Q4:  What does Miss Mason think of Wanda’s drawings? What do the children think of them? How do you know?',
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
