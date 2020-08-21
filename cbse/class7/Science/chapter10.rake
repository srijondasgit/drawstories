 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Respiration in Organisms", audio_link: 'chapter1.mp3')

        sections = ['One day Boojho was eagerly waiting to meet his grandparents who were coming to the town after a year. He was in a real hurry as he wanted to receive them at the bus-stop. He ran fast and reached the bus-stop in a few minutes. He was breathing rapidly. His grandmother asked him why he was breathing so fast. Boojho told her that he came running all the way. But the question got stuck in his mind. He wondered why running makes a person breathe faster. The answer to Boojho’s question lies in understanding why we breathe. Breathing is a part of respiration.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why does an athlete breathe faster and deeper than usual after finishing the race?", 
                    "Q2: List the similarities and differences between aerobic and anaerobic respiration.",
                    "Q3: Why do we often sneeze when we inhale a lot of dust-laden air?",
                    "Q4: Keep a snail in test-tube A, a water plant in test-tube B and in C, keep snail and plant both. Which test-tube would have the highest concentration of CO2",
                    
                              
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
