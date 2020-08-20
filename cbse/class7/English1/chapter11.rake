 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'MAUDE RUBIN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Mystery of the talking fan", audio_link: 'chapter1.mp3')

        sections = ['Once there was a talking fan —Electrical his chatter.I couldn’t quite hear what he said And I hope it doesn’t matter Because one day somebody oiled His little whirling motor', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Fans don’t talk, but it is possible to imagine that they do.What is it, then, that sounds like the fan’s chatter?",
                    "Q2: What do you think the talking fan was demanding?",
                    "Q3: How does an electric fan manage to throw so much air when it is switched on?",
                    "Q4: Is there a ‘talking fan’ in your house? Create a dialogue between the fan and a mechanic",
                                     
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
