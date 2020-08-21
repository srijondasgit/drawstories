
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Electoral Politics", audio_link: 'chapter1.mp3')
        sections = ['In Chapter 1 we have seen that in a democracy it is neither possible nor necessary for people to govern directly. The most common form of democracy in our times is for the people to govern through their representatives. In this chapter we will look at how these representatives are elected. We begin by understanding why elections are necessary and useful in a democracy. We try to understand how electoral competition among parties serves the people. We then go on to ask what makes an election democratic. The basic idea here is to distinguish democratic elections from non-democratic elections.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Which of the following statements about the reasons for conducting elections are false? (a) Elections enable people to judge the performance of the government.(b) People select the representative of their choice in an election.(c) Elections enable people to evaluate the performance of the judiciary.(d) People can indicate which policies they prefer.',
                    'Q2:  Which of these is not a good reason to say that Indian elections are democratic?(a) India has the largest number of voters in the world.(b) India’s Election Commission is very powerful.(c) In India, everyone above the age of 18 has a right to vote.(d) In India, the losing parties accept the electoral verdict',
                    'Q3:  List all the different election related activities mentioned in the chapter and arrange them in a time sequence, beginning with the first activity and ending with the last. Some of these activities are given below: releasing election manifestos; counting of votes; making of voters’ list; election campaign; declaration of election results; casting of votes; ordering of re-poll; announcing election schedule; filing nomination.',
                    'Q4:  Surekha is an officer in-charge of ensuring free and fair elections in an assembly constituency in a state. Describe what should she focus on for each of the following stages of election:(a) Election campaign (b) Polling day  (c) Counting day',
                    'Q5:  Chinappa was convicted for torturing his wife for dowry. Satbir was held guilty of practicing untouchability. The court did not allow either of them to contest elections. Does this decision go against the principles of democratic elections?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
