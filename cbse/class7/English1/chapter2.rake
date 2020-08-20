 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'MILDRED BOWERS ARMSTRONG', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Squirrel", audio_link: 'chapter1.mp3')

        sections = ['He wore a question mark for tail,An overcoat of gray,He sat up straight to eat a nut.He liked to tease and play,And if we ran around his tree,He went the other way.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why does the poet say the squirrel “wore a question mark for tail”? Draw a squirrel, or find a picture of a squirrel sitting on the ground. How would you describe its tail?",
                    "Q2: Do we usually say that an animal ‘wears’ a tail? What do we say? (Think: Does an animal wear a coat? Consult a dictionary if you like, and find out how ‘wear’ is usedin different ways.)",
                    "Q3: “He liked to tease and play”. Who is teasing whom? How ?",
                                     
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
