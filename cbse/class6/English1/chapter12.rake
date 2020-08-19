
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'MARY O’NEILL', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Wonderrffull Worrdss", audio_link: 'chapter1.mp3')

        sections = [   'Never let a thought shrivel and die', 
                       'For want of a way to say it',
                       'For English is a wonderful game',
                       'And all of you can play it.',

                       'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Do not let a thought shrivel and die because ..................",
                    "Q2:  English is a ............... with words that everyone can play.",
                    "Q3:  One has to match ...................",
                    "Q4:  Words are the ...............of thought",
                   
                                 ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
