
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Gender,Religion and Caste", audio_link: 'chapter1.mp3')
        sections = ['In the previous chapter we noted that the existence of social diversity does not threaten democracy. Political expression of social differences is possible and sometimes quite desirable in a democratic system. In this chapter we apply these ideas to the practice of democracy in India. We look at three kinds of social differences that can take the form of social divisions and inequalities. These are social differences based on gender, religion and caste. In each case we look at the nature of this division in India and how it gets expressed in politics. We also ask whether different expressions based on these differences are healthy or otherwise in a democracy.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Mention different aspects of life in which women are discriminated or disadvantaged in India.',
                    'Q2:  State different forms of communal politics with one example each.',
                    'Q3:  State how caste inequalities are still continuing in India.',
                    'Q4:  State two reasons to say that caste alone cannot determine election results in India.',
                    'Q5:  What is the status of women’s representation in India’s legislative bodies?',
                    'Q6:  Mention any two constitutional provisions that make India a secular state.',
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
