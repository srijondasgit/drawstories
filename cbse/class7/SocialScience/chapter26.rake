 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Human Environment-Settlement, Transport and Communication", audio_link: 'chapter1.mp3')

        sections = ['In Chapter 1 you have learnt that early human beings depended entirely on nature for food, clothing and shelter; but with time they learnt new skills to grow food,build homes and develop better means of transport and communication. In this way they modified the environment where they lived. Settlements are places where people build their homes. Early human beings lived on trees and in caves. When they started to grow crops it became necessary to have a permanent home.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What are the four means of transport?",
                    "Q2: What do you understand by the term ‘settlement’?",
                    "Q3: Which are the activities practised by the rural people?",
                    "Q4: Mention any two merits of railways.",
                    "Q5: What do you understand by communication?",
                    "Q6: What is mass media?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
