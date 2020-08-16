
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Weavers, Iron Smelters and Factory Owners", audio_link: 'chapter1.mp3')
        sections = ['This chapter tells the story of the crafts and industries of India during British rule by focusing on two industries, namely, textiles and iron and steel. Both these industries were crucial for the industrial revolution in the modern world. Mechanised production of cotton textiles made Britain the foremost industrial nation in the nineteenth century. And when its iron and steel industry started growing from the 1850s, Britain came to be known as the “workshop of the world”.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How do the names of different textiles tell us about their histories?',
                    'Q2:  Why did the wool and silk producers in England protest against the import of Indian textiles in the early eighteenth century?',
                    'Q3:  How did the development of cotton industries in Britain affect textile producers in India?',
                    'Q4:  Why did the Indian iron smelting industry decline in the nineteenth century?',
                    'Q5:  What problems did the Indian textile industry face in the early years of its development?',
                    'Q6:  What helped TISCO expand steel production during the First World War?',
                    'Q7:  Find out about the history of any craft around the area you live. You may wish to know about the community of craftsmen, the changes in the techniques they use and the markets they supply. How have these changed in the past 50 years?',
                    'Q8:  On a map of India, locate the centres of different crafts today. Find out when these centres came up.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
