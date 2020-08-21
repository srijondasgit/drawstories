
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "INDIA – SIZE AND LOCATION", audio_link: 'chapter1.mp3')
        sections = ['India is one of the ancient civilisations in the world. It has achieved multi-faceted socioeconomic progress during the last five decades. It has moved forward displaying remarkable progress in the field of agriculture, industry, technology and overall economic development. India has also contributed significantly to the making of world history.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  2 Answer the following questions briefly.(i) Name the group of islands lying in the Arabian Sea.(ii) Name the countries which are larger than India.(iii) Which island group of India lies to its south-east?(iv) Which island countries are our southern neighbours?',
                    'Q2:  The sun rises two hours earlier in Arunachal Pradesh as compared to Gujarat in the west but the watches show the same time. How does this happen?',
                    'Q3:  The central location of India at the head of the Indian Ocean is considered of great significance. Why?',
                           ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
