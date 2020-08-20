 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ROALD DAHL', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Invention of Vita work", audio_link: 'chapter1.mp3')

        sections = ['Mr Willy Wonka begins by inventing WonkaVite, which makes people younger. But WonkaVite is too strong. So some people disappear, because their age becomes Minus! One person actually becomes minus eighty-seven, which means he’s got to wait eighty-seven years before he can come back. Mr Willy Wonka must invent a new thing...', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What trees does Mr Wonka mention? Which tree does he say lives the longest?",
                    "Q2: How long does this tree live? Where can you find it?",
                    "Q3: How many of the oldest living things can you remember from Mr Wonka’s list? (Don’t look back at the story!) Do you think all these things really exist, or are some of them purely imaginary?",
                    "Q4: Why does Mr Wonka collect items trom the oldest things? Do you think this is the right way to begin his invention?",
                    "Q5: What happens to the volunteer who swallows four drops of the new invention? What is the name of the invention?",
                    
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
