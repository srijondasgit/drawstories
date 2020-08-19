 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "OUR COUNTRY – INDIA", audio_link: 'chapter1.mp3')

        sections = ['India is a country of vast geographical expanse. In the north, it is bound by the lofty Himalayas. The Arabian Sea in the west, the Bay of Bengal in the east and the Indian Ocean in the south, wash the shores of the Indian peninsula.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Name the major physical divisions of India.",
                    "Q2: India shares its land boundaries with seven countries. Name them.",
                    "Q3: Which two major rivers fall into the Arabian Sea?",
                    "Q4: Name the delta formed by the Ganga and the Brahmaputra.",
                    "Q5: How many States and Union Territories are there in India? Which states have a common capital?",
                    "Q6: Why do a large number of people live in the Northern plains?",
                    "Q7: Why is Lakshadweep known as a coral island?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
