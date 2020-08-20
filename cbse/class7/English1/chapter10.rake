 
 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JOHN GALSWORTHY', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Quality", audio_link: 'chapter1.mp3')

        sections = ['I knew him from the days of my extreme youth, because he made my father’s boots. He lived with his elder brother in his shop, which was in a small by-street in a fashionable part of London', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What was the author’s opinion about Mr Gessler as a bootmaker?",
                    "Q2: Why did the author visit the shop so infrequently?",
                    "Q3: What was the effect on Mr Gessler of the author’s remark about a certain pair of boots?",
                    "Q4: What was Mr Gessler’s complaint against “big firms”?",
                    "Q5: Why did the author order so many pairs of boots? Did he really need them?",
                                        
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
