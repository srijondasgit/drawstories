
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MANUFACTURING INDUSTRIES", audio_link: 'chapter1.mp3')
        sections = ['Production of goods in large quantities after processing from raw materials to more valuable products is called manufacturing.Do you know that paper is manufactured from wood, sugar from sugarcane, iron and steel from iron ore and aluminium from bauxite? Do you also know that some types of clothes are manufactured from yarn which itself is an industrial product?',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is manufacturing?',
                    'Q2:  Name any three physical factors for the location of the industry.?',
                    'Q3:  Name any three human factors for the location of an industry.',
                    'Q4:  What are basic industries? Give an example.',
                    'Q5:  Name the important raw materials used in the manufacturing of cement?',
                    'Q6:  How are integrated steel plants different from mini steel plants? What problems does the industry face? What recent developments have led to a rise in the production capacity?',
                    'Q7:    How do industries pollute the environment? ',
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
