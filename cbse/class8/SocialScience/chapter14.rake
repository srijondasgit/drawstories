
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Understanding Secularism", audio_link: 'chapter1.mp3')
        sections = ['YImagine yourself as a Hindu or Muslim living in a part of the United States of America where Christian fundamentalism is very powerful. Suppose that despite being a US citizen, no one is willing to rent their house to you. How would this make you feel? Would it not make you feel resentful? What if you decided to complain against this discrimination and were told to go back to India. Would this not make you feel angry? Your anger could take two forms. First, you might react by saying that Christians should get the same treatment in places where Hindus and Muslims are in a majority. This is a form of retaliation. Or, you might take the view that there should be justice for all. You may fight, stating that no one should be discriminated against on grounds of their religious practices and beliefs. This statement rests on the assumption that all forms of domination related to religion should end. This is the essence of secularism. In this chapter, you will read more about what this means in the Indian context.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  List the different types of religious practice that you find in your neighbourhood. This could be different forms of prayer, worship of different gods, sacred sites, different kinds of religious music and singing etc. Does this indicate freedom of religious practice?',
                    'Q2:  Will the government intervene if some religious group says that their religion allows them to practise infanticide? Give reasons for your answer.',
                    'Q3:  Look up the annual calendar of holidays of your school. How many of them pertain to different religions? What does this indicate?',
                    'Q4:  Find out some examples of different views within the same religion.',
                    'Q5:  The Indian State both keeps away from religion as well as intervenes in religion. This idea can be quite confusing. Discuss this once again in class using examples from the chapter as well as those that you might have come up with.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
