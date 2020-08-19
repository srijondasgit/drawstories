 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "IN THE EARLIEST CITIES", audio_link: 'chapter1.mp3')

        sections = ['Very often, old buildings have a story to tell. Nearly a hundred and fifty years ago, when railway lines were being laid down for the first time in the Punjab, engineers stumbled upon the site of Harappa in present-day Pakistan. To them, it seemed like a mound that was a rich source of ready made, high quality bricks. So they carried off thousands of bricks from the walls of the old buildings of the city to build railway lines. Many buildings were completely destroyed.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: How do archaeologists know that cloth was used in the Harappan civilisation?",
                    "Q2: Why were metals, writing, the wheel, and the plough important for the Harappans?",
                    "Q3: Make a list of all the terracotta toys shown in the lesson. Which do you think children would have enjoyed playing with the most?",
                    "Q4: Do you think that the life of farmers and herders who supplied food to the Harappan cities was different from that of the farmers and herders you read about in Chapter 3? Give reasons for your answer.",
                    "Q5: Describe three important buildings in your city or village. Are they located in a special part of the settlement (e.g. the centre)? What are the activities that take place in these buildings?",
                    "Q6: Are there any old buildings in your locality? Find out how old they are and who looks after them.",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
