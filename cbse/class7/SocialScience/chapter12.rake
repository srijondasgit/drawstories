 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Role of the Government in Health", audio_link: 'chapter1.mp3')

        sections = ['In a democracy people expect the government to work for their welfare. This could be through the provision of education, health, employment, housing or the development of roads, electricity etc. In this chapter we shall examine the meanings and problems related to health. Look at the sub-headings of this chapter.In what ways do you think this topic is related to the work of government?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: In this chapter you have read that health is a wider concept than illness. Look at this quote from the Constitution and explain the terms ‘living standard’ and ‘public health’ in your own words.",
                    "Q2: What are the different ways through which the government can take steps to provide healthcare for all? Discuss.",
                    "Q3: What differences do you find between private and public health services in your area?",
                    "Q4: Improvement in water and sanitation can control many diseases.’ Explain with the help of examples.",
                                     
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
