 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "WHAT IS GOVERNMENT?", audio_link: 'chapter1.mp3')

        sections = ['Every country needs a government to make decisions and get things done. These can be decisions about where to build roads and schools, or how to reduce the price of onions when they get too expensive or ways to increase the supply of electricity.The government also takes action on many social issues, for example it has several programmes to help the poor.It does other important things such as running postal and railway services.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What do you understand by the word 'government'? List five ways in which you think the government affects your daily life.",
                    "Q2:  Why do you think the government needs to make rules for everyone in the form of laws?",
                    "Q3:  Name two essential features of a democratic government.",
                    "Q4:  What was the suffrage movement? What did it accomplish?"
                    "Q5:  Gandhiji strongly believed that every adult in India should be given the right to vote. However, a lot of people don't share his views. Many feel that illiterate people, who are mainly poor, should not be given the right to vote. What do you think? Do you think this would be a form of discrimination? Give five points to support your view and share these with the class.",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
