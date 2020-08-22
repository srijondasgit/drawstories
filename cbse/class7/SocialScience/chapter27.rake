 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Human Environment Interactions-The Tropical and the SubTropical Region", audio_link: 'chapter1.mp3')

        sections = ['Renuka was excited. Shrikant Uncle was home after a gap of nearly four months. He was a wildlife photographer and travelled widely. Renuka’s interest in wildlife and forests began at an early age, when her uncle introduced her to books on nature. Pictures of distant lands and people, who lived there, always fascinated her.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Name the continent in which the Amazon Basin is located. ",
                    "Q2: What are the crops grown by the people of the Amazon Basin.",
                    "Q3: Name the birds that you are likely to find in the rainforests of the Amazon.",
                    "Q4: What are the major cities located on the River Ganga.",
                    "Q5: Where is the one-horned rhinoceros found?",
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
