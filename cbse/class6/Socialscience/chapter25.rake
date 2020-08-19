 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MAJOR DOMAINS OF THE EARTH", audio_link: 'chapter1.mp3')

        sections = ['As you have read in the first chapter, the earth is the only planet which has life. Human beings can live here because the life sustaining elements of land, water and air are present on the earth.The surface of the earth is a complex zone in which three main components of the environment meet, overlap and interact', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are the four major domains of the earth?",
                    "Q2: Name the major continents of the earth.",
                    "Q3: Name the two continents that lie entirely in the Southern Hemisphere.",
                    "Q4: Name the different layers of atmosphere.",
                    "Q5: Why is the earth called the ‘blue planet’?",
                    "Q6: Why is the Northern Hemisphere called the Land Hemisphere?",
                    "Q7: Why is the Biosphere important for living organisms?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
