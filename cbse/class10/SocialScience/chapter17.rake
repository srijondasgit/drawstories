
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "AGRICULTURE", audio_link: 'chapter1.mp3')
        sections = ['India is an agriculturally important country. Two-thirds of its population is engaged in agricultural activities. Agriculture is a primary activity, which produces most of the food that we consume. Besides food grains, it also produces raw material for various industries.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Name one important beverage crop and specify the geographical conditions required for its growth.',
                    'Q2:  Name one staple crop of India and the regions where it is produced.',
                    'Q3:  Enlist the various institutional reform programmes introduced by the government in the interest of farmers.',
                    'Q4:  The land under cultivation has got reduced day by day. Can you imagine its consequences?',
                    'Q5:  Suggest the initiative taken by the government to ensure the increase in agricultural production.',
                    'Q6:  Describe the impact of globalisation on Indian agriculture.',
                    'Q7:  Describe the geographical conditions required for the growth of rice.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
