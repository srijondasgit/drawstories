 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JAYANT NARLIKAR', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "An Alien Hand", audio_link: 'chapter1.mp3')

        sections = ['Have you heard of the Viking Mission to Mars? The National Aeronautics and Space Administration’s (NASA) Viking Mission to Mars was composed of two spacecraft, Viking 1 and Viking 2, each consisting of an orbiter and a lander. The primary objectives were to obtain images and samples of the Martian surface and soil and search for any possible signs of life. Viking 1 was launched on 20 August 1975 and arrived at Mars on 19 June 1976. Viking 2 was launched on 9 September 1975 and entered Mars’ orbit on 7 August 1976.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: If you had to live in a home like Tilloo’s, what parts of life would you find most difficult? What compensations might there be?",
                    "Q2: What, if anything, might drive mankind to make their homes underground?",
                    "Q3: Do you think there is life on other planets? Can you guess what kind of people there may be on them? In what ways are they likely to be different from us?",
                                                            
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
