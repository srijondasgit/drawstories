
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'LORRAINE M. HALLI', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A House, A Home",audio_link: 'chapter1.mp3')
       
                       sections = [ 'What is a house?', 
                     'It’s brick and stone',
                     'and wood that’s hard.',
                     'Some window glass',
                     'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Do you agree with what the poet says? Talk to your partner and complete these sentences.(i) A house is made of.......... (ii) It has............. (iii) A home is made by ........ (iv) It has ..... ", 
             
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
