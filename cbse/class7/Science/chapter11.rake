 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Transportation in Animals and Plants", audio_link: 'chapter1.mp3')

        sections = ['You have learnt earlier that all organisms need food, water and oxygen for survival. They need to transport all these to various parts of their body. Further, animals need to transport wastes to parts from where they can be removed. Have you wondered how all this is achieved? Look at Fig. 11.1. Do you see the heart and the blood vessels? They function to transport substances and together form the circulatory system. In this chapter,you shall learn about transport of substances in animals and plants.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Why is transport of materials necessary in a plant or in an animal? Explain.",
                    "Q2: What will happen if there are no platelets in the blood?",
                    "Q3: What are stomata? Give two functions of stomata",
                    "Q4: Does transpiration serve any useful function in the plants? Explain.",
                    "Q5: What are the components of blood?",
                    "Q6: Why is blood needed by all the parts of a body?".
                    "Q7: What makes the blood look red?",
                    "Q8: Describe the function of the heart.",
                    "Q9: Why is it necessary to excrete waste products?",

                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
