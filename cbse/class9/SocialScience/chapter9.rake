
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Working of Institutions", audio_link: 'chapter1.mp3')
        sections = ['Democracy is not just about people electing their rulers. In a democracy the rulers have to follow some rules and procedures. They have to work with and within institutions. This chapter is about the working of such institutions in a democracy. We try to understand this by looking at the manner in which major decisions are taken and implemented in our country. We also look at how disputes regarding these decisions are resolved. In this process we come across three institutions that play a key role in major decisions – legislature, executive and judiciary.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Of all the institutions that we have studied in this chapter, name the one that exercises the powers on each of the following matters.(a) Decision on allocation of money for developing infrastructure like roads, irrigation etc. and different welfare activities for the citizens (b) Considers the recommendation of a Committee on a law to regulate the stock exchange (c) Decides on a legal dispute between two state governments (d) Implements the decision to provide relief for the victims of an earthquake.',
                    'Q2:  Why is the Prime Minister in India not directly elected by the people? Choose the most appropriate answer and give reasons for your choice.(a) In a Parliamentary democracy only the leader of the majority party in the Lok Sabha can become the Prime Minister.(b) Lok Sabha can remove the Prime Minister and the Council of Ministers even before the expiry of their term.(c) Since the Prime Minister is appointed by the President there is no need for it.(d) Direct election of the Prime Minister will involve lot of expenditure on election.',
                    'Q3:  A teacher was making preparations for a mock parliament. She called two students to act as leaders of two political parties. She gave them an option: Each one could choose to have a majority either in the mock Lok Sabha or in the mock Rajya Sabha. If this choice was given to you, which one would you choose and why?',
                    'Q4:  Three friends went to watch a film that showed the hero becoming Chief Minister for a day and making big changes in the state. Imran said this is what the country needs. Rizwan said this kind of a personal rule without institutions is dangerous. Shankar said all this is a fantasy. No minister can do anything in one day. What would be your reaction to such a film?',
                       ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
