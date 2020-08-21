 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Fibre to Fabric", audio_link: 'chapter1.mp3')

        sections = ['In Class VI you have learnt about some fibres obtained from plants. You also learnt that wool and silk fibres are obtained from animals. Wool is obtained from the fleece (hair) of sheep or yak. Silk fibres come from cocoons of the silk moth. Do you know which part of the sheep’s body yields fibres? Are you aware how these fibres are converted into the woollen yarn that we buy from the market to knit sweaters? Do you have any idea how silk fibres are made into silk, which is woven into saris?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Which parts of the black sheep have wool?",
                    "Q2: What is meant by the white fleece of the lamb?",
                      
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
