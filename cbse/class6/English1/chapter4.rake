
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'HARRY BEHN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Kite?", audio_link: 'chapter1.mp3')
        sections = [ 'How bright on the blue',            
                     'Is a kite when it’s new!',
                     'With a dive and a dip', 
                     'It snaps its tail',

                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Read these lines from the poem: Then soars like a ship With only a sail The movement of the tailless kite is compared to a ship with a sail. This is called a simile. Can you suggest what or who the following actions may be compared to? ",
                                        
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
