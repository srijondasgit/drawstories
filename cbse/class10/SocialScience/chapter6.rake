
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Power-sharing", audio_link: 'chapter1.mp3')
        sections = ['With this chapter, we resume the tour of democracy that we started last year. We noted last year that in a democracy all power does not rest with any one organ of the government. An intelligent sharing of power among legislature, executive and judiciary is very important to the design of a democracy. In this and the next two chapters, we carry this idea of power-sharing forward. We start with two stories from Belgium and Sri Lanka. Both these stories are about how democracies handle demands for power-sharing.The stories yield some general conclusions about the need for power-sharing in democracy. This allows us to discuss various forms of power-sharing that will be taken up in the following two chapters.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What are the different forms of power sharing in modern democracies? Give an example of each of these.',
                    'Q2:  State one prudential reason and one moral reason for power sharing with an example from the Indian context.',
                    'Q3:  After reading this chapter, three students drew different conclusions. Which of these do you agree with and why? Give your reasons in about 50 words. Thomman - Power sharing is necessary only in societies which have religious, linguistic or ethnic divisions. Mathayi – Power sharing is suitable only for big countries that have regional divisions. Ouseph – Every society needs some form of power sharing even if it is small or does not have social divisions.',
                    'Q4:  The Mayor of Merchtem, a town near Brussels in Belgium, has defended a ban on speaking French in the town’s schools. He said that the ban would help all non-Dutch speakers integrate in this Flemish town. Do you think that this measure is in keeping with the spirit of Belgium’s power sharing arrangements? Give your reasons in about 50 words.',
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
