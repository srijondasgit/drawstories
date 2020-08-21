 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "THE MUGHAL EMPIRE", audio_link: 'chapter1.mp3')

        sections = ['Ruling as large a territory as the Indian subcontinent with such a diversity of people and cultures was an extremely difficult task for any ruler to accomplish in the Middle Ages. Quite in contrast to their predecessors, the Mughals created an empire and accomplished what had hitherto seemed possible for only short periods of time. From the latter half of the sixteenth century they expanded their kingdom from Agra and Delhi, until in the seventeenth century they controlled nearly all of the subcontinent. They imposed structures of administration and ideas of governance that outlasted their rule, leaving a political legacy that succeeding rulers', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What was the role of the zamindar in Mughal administration?",
                    "Q2: How were the debates with religious scholars important in the formation of Akbar’s ideas on governance?",
                    "Q3: Why did the Mughals emphasise their Timurid and not their Mongol descent?",
                    "Q4: How important was the income from land revenue tothe stability of the Mughal Empire?",
                    "Q5: Why was it important for the Mughals to recruit mansabdars from diverse backgrounds and not just Turanis and Iranis?",
                    "Q6: Like the Mughal Empire, India today is also made up of many social and cultural units. Does this pose a challenge to national integration?",
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
