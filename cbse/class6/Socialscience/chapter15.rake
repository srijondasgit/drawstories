 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "KEY ELEMENTS OF A DEMOCRATIC GOVERNMENT", audio_link: 'chapter1.mp3')

        sections = ['South Africa is a country that has people of several races. There are black people who belong to South Africa, whites who came there to settle, and Indians who came as labourers and traders. ', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:   How would Maya's life be different in South Africa today?",
                    "Q2:  What are the various ways in which people participate in the process of government?",
                    "Q3:  Why do you think we need the government to find solutions to many disputes or conflicts?",
                    "Q4:  What actions does the government take to ensure that all people are treated equally? ",
                    "Q5:  Read through the chapter and discuss some of the key ideas of a democratic government. Make a list. For example, all people are equal.",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
