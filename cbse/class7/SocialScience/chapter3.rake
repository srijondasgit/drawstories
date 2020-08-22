 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "THE DELHI SULTANS", audio_link: 'chapter1.mp3')

        sections = ['In Chapter 2 we saw that regions like the Kaveri delta  became the centre of large kingdoms. Did you notice that there was no mention of a kingdom with Delhi as its capital? That was because Delhi became an important city only in the twelfth century', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Which ruler first established his or her capital at Delhi?",
                    "Q2: What was the language of administration under the Delhi Sultans?",
                    "Q3: In whose reign did the Sultanate reach its farthest extent?",
                    "Q4: From which country did Ibn Battuta travel to India?",
                    "Q5: According to the “circle of justice”, why was it important for military commanders to keep the interests of the peasantry in mind?",
                    "Q6: What is meant by the “internal” and “external” frontiers of the Sultanate?",
                    "Q7: What were the steps taken to ensure that muqtis performed their duties? Why do you think they may have wanted to defy the orders of the Sultans?",
                    "Q8: What was the impact of the Mongol invasions on the Delhi Sultanate?",
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
