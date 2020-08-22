
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "CONSUMER RIGHTS", audio_link: 'chapter1.mp3')
        sections = ['This chapter proposes to discuss the issue of consumer rights within the context of the ways markets operate in our country. There are many aspects of unequal situations in a market and poor enforcement of rules and regulations. Hence,there is a need to sensitise learners and encourage them to participate in the consumer movement.This chapter provides case histories — how some consumers were exploited in a real-life situation and how legal institutions helped consumers in getting compensated and in upholding their rights. The case histories would enable the students to link these narratives to their life experiences. We have to enable students to understand that the awareness of being a well-informed consumer arose out of consumer movement and active participation of people through their struggles over a long period. This chapter also provides details of a few organisations helping consumers in different ways. Finally, it ends with some critical issues of the consumer movement in India.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why are rules and regulations required in the marketplace? Illustrate with a few examples.',
                    'Q2:  What factors gave birth to the consumer movement in India? Trace its evolution.',
                    'Q3:  Explain the need for consumer consciousness by giving two examples.',
                    'Q4:  Mention a few factors which cause exploitation of consumers.',
                    'Q5:  What is the rationale behind the enactment of Consumer Protection Act 1986?',
                    'Q6:  Describe some of your duties as consumers if you visit a shopping complex in your locality.',
                    'Q7:  Suppose you buy a bottle of honey and a biscuit packet. Which logo or mark you will have to look for and why?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
