
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Our Environment", audio_link: 'chapter1.mp3')
        sections = ['We have heard the word ‘environment’ often being used on the television, in newspapers and by people around us. Our elders tell us that the ‘environment’ is not what it used to be earlier; others say that we should work in a healthy ‘environment’; and global summits involving the developed and developing countries are regularly held to discuss ‘environmental’ issues. In this chapter, we shall be studying how various components in the environment interact with each other and how we impact the environment.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why are some substances biodegradable and some non-biodegradable?',
                    'Q2:  Give any two ways in which biodegradable substances would affect the environment.',
                    'Q3:  Give any two ways in which non-biodegradable substances would affect the environment.',
                    'Q4:  What will happen if we kill all the organisms in one trophic level?',
                    'Q5:  What is biological magnification? Will the levels of this magnification be different at different levels of the ecosystem?',
                    'Q6:  What are the problems caused by the non-biodegradable wastes that we generate?',
                    'Q7:  If all the waste we generate is biodegradable, will this have no impact on the environment?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
