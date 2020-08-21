
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Story of Village Palampur", audio_link: 'chapter1.mp3')
        sections = ['The purpose of the story is to introduce some basic concepts relating to production and this we do through a story of a hypothetical village called Palampur.* Farming is the main activity in Palampur, whereas several other activities such as small scale manufacturing, dairy, transport, etc. are carried out on a limited scale. These production activities need various types of resources — natural resources, manmade items, human effort, money, etc. As we read through the story of Palampur, we will learn how various resources combine to produce the desired goods and services in the village.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Modern farming methods require more inputs which are manufactured in industry. Do you agree?',
                    'Q2:  How did the spread of electricity help farmers in Palampur?',
                    'Q3:  Construct a table on the distribution of land among the 450 families of Palampur.',
                    'Q4:  Is it important to increase the area under irrigation? Why?',
                    'Q5:  Why are the wages for farm labourers in Palampur less than minimum wages?',
                    'Q6:  In your region, talk to two labourers. Choose either farm labourers or labourers working at construction sites. What wages do they get? Are they paid in cash or kind? Do they get work regularly? Are they in debt?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
