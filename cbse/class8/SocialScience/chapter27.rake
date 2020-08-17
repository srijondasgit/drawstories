
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Human Resources", audio_link: 'chapter1.mp3')
        sections = ['People are a nation’s greatest resource. Nature’s bounty becomes significant only when people find it useful. It is people with their demands and abilities that turn them into ‘resources’. Hence, human resource is the ultimate resource. Healthy, educated and motivated people develop resources as per their requirements. Human resources like other resources are not equally distributed over the world. They differ in their educational levels, age and sex. Their numbers and characteristics also keep changing.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why are people considered a resource',
                    'Q2:  What are the causes for the uneven distribution of population in the world?',
                    'Q3:  The world population has grown very rapidly. Why?',
                    'Q4:  Discuss the role of any two factors influencing population change.',
                    'Q5:  What is meant by population composition?',
                    'Q6:  What are population pyramids? How do they help in understanding about the population of a country?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
