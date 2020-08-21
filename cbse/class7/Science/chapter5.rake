 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Acids, Bases and Salts", audio_link: 'chapter1.mp3')

        sections = ['We use in our daily life a large number of substances such as lemon, tamarind, common salt, sugar and vinegar. Do they have the same taste? Let us recall tastes of some edible substances listed in Table 5.1. If you have not tasted any of these substances taste it now and enter the result in Table 5.1.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: State differences between acids and bases.",
                    "Q2: Ammonia is found in many household products, such as window cleaners. It turns red litmus blue. What is its nature?",
                    "Q3: Name the source from which litmus solution is obtained. What is the use of this solution?",
                    "Q4: Is the distilled water acidic/basic/neutral? How would you verify it?",
                    "Q5: Describe the process of neutralisation with the help of an example.",
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
