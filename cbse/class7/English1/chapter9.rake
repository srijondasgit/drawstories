 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'SHIRLEY BAUER', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Trees", audio_link: 'chapter1.mp3')

        sections = ['Trees are for birds.Trees are for children.Trees are to make tree houses in.Trees are to swing swings on.Trees are for the wind to blow through.Trees are to hide behind in ‘Hide and Seek.’Trees are to have tea parties under.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are the games or human activities which use trees,or in which trees also ‘participate’?",
                    "Q2: (i) “Trees are to make no shade in winter.” What does this mean? (Contrast this line with the line immediately before it.)
                        (ii) “Trees are for apples to grow on, or pears.” Do you agree that one purpose of a tree is to have fruit on it? Or do you think this line is humorous?",
                               
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
 