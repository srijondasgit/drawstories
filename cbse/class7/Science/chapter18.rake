 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Wastewater Story", audio_link: 'chapter1.mp3')

        sections = ['All of us use water in our homes and make it dirty. Dirty! Are you surprised? Rich in lather, mixed with oil, black– brown water that goes down the drains from sinks, showers, toilets, laundries is dirty. It is called wastewater. This used water should not be wasted. We must clean it up by removing pollutants. Have you ever thought where the wastewater goes and what happens to it?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is sewage? Explain why it is harmful to discharge untreated sewage into rivers or seas.",
                    "Q2: Why should oils and fats be not released in the drain? Explain.",
                    "Q3: Describe the steps involved in getting clarified water from wastewater.",
                    "Q4: What is sludge? Explain how it is treated.",
                    "Q5: Untreated human excreta is a health hazard. Explain.",
                    "Q6: Name two chemicals used to disinfect water.".
                    "Q7: Explain the function of bar screens in a wastewater treatment plant.",
                    "Q8: Explain the relationship between sanitation and disease.",
                    "Q9: Outline your role as an active citizen in relation to sanitation.",

                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
