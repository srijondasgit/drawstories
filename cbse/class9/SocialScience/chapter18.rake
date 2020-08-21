
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "People as Resource", audio_link: 'chapter1.mp3')
        sections = ['The chapter "People as Resource" is an effort to explain population as an asset for the economy rather than a liability. Population becomes human capital when there is investment made in the form of education, training and medical care.In fact, human capital is the stock of skill and productive knowledge embodied in them.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What do you understand by "people as a resource"?',
                    'Q2:  How is human resource different from other resources like land and physical capital?',
                    'Q3:  What is the role of education in human capital formation?',
                    'Q4:  What is the role of health in human capital formation?',
                    'Q5:  What part does health play in the individual’s working life?',
                    'Q6:  What are the various activities undertaken in the primary sector, secondary sector and tertiary sector?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
