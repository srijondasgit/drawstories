
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'WALTER DE LA MARE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "All but Blind*", 
                  
                    audio_link: 'chapter1.mp3')

        sections = [ 'All but blind', 
                     'In his chambered hole',
                     'Gropes for worms',
                     'The four-clawed Mole.',
                     
                     'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Look at your hands carefully. Now, write down for each finger one action for which that finger is particularly important. For example, the second (or index) finger helps to hold the knife down firmly when cutting.", 
                  
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
