 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'FRANK FLYNN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Shed", audio_link: 'chapter1.mp3')

        sections = ['There’s a shed at the bottom of our garden With a spider’s web hanging across the door,The hinges are rusty and creak in the wind.When I’m in bed I lie and I listen,I’ll open that door one day', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Who is the speaker in the poem?",
                    "Q2: Is she/he afraid or curious, or both?",
                    "Q3: What is she/he planning to do soon?",
                    "Q4: “But not just yet...” suggests doubt, fear, hesitation,laziness or something else. Choose the word which seems right to you. Tell others why you chose it",
                                       
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
