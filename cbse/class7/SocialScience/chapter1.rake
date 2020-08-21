 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "TRACING CHANGES THROUGH A THOUSAND YEARS", audio_link: 'chapter1.mp3')

        sections = ['Take a look at Maps 1 and 2. Map 1 was made in 1154 CE by the Arab geographer Al-Idrisi. The section reproduced here is a detail of the Indian subcontinent from his larger map of the world. Map 2 was made in the 1720s by a French cartographer. The two maps are quite different even though they are of the same area. In al-Idrisi’s map, south India is where we would expect to find north India and Sri Lanka is the island at the top.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Who was considered a “foreigner” in the past?",
                    "Q2: List some of the technological changes associated with this period.",
                    "Q3: What were some of the major religious developments during this period?",
                    "Q4: In what ways has the meaning of the term “Hindustan” changed over the centuries?",
                    "Q5: How were the affairs of jatis regulated?",
                    "Q6: What does the term pan-regional empire mean?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
