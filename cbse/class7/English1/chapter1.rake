 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'LEO TOLSTOY', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Three Questions", audio_link: 'chapter1.mp3')

        sections = ['The thought came to a certain king that he would never fail if he knew three things. These three things were: What is the right time to begin something? Which people should he listen to? What is the most important thing for him to do?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why was the king advised to go to magicians?",
                    "Q2: In answer to the second question, whose advice did the people say would be important to the king?",
                    "Q3: What suggestions were made in answer to the third question?",
                    "Q4: Did the wise men win the reward? If not, why not?",
                    "Q5: How did the king and the hermit help the wounded man?",
                    "Q6: (i) Who was the bearded man?
                        (ii) Why did he ask for the king’s forgiveness?",
                    "Q7: The king forgave the bearded man. What did he do to show his forgiveness?",
                    "Q8: What were the hermit’s answers to the three questions? Write each answer separately. Which answer do you like most, and why?",
                           
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
