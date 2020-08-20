 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'MICHAEL ROSEN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Chivvy", audio_link: 'chapter1.mp3')

        sections = ['Grown-ups say things like: Speak up Don’t talk with your mouth full Don’t stare Don’t point Don’t pick your nose', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: When is a grown-up likely to say this? Don’t talk with your mouth full.",
                    "Q2: When are you likely to be told this? Say thank you.",
                    "Q3: When do you think an adult would say this? No one thinks you are funny.",
                                      
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
