
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: " Industries", audio_link: 'chapter1.mp3')
        sections = ['Have you ever given a thought to the fact that the note book you use for writing has come to you after a long process of manufacturing. It started its life as part of a tree. It was cut down and transported to the pulp mill. There the wood of the tree was processed and converted into wood pulp. The wood pulp was mixed with chemicals and finally changed into paper by machines. This paper found its way to the press where ink made from chemicals was used to print the lines on the pages. The pages were then bound in the form of a note book, packed and sent to the market for sale. Finally, it reached your hands.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is meant by the term ‘industry’?',
                    'Q2:  Which are the main factors which influence the location of an industry?',
                    'Q3:  Which industrty is often referred to as the backbone of modern industry and why?',
                    'Q4:  Why cotton textile industry rapidly expanded in Mumbai?',
                    'Q5:  What are the similarities between information technology industry in Bangalore and California?',
                    'Q6:  Distinguish between the followings - Agro-based and mineral based industry',
                    'Q7:  Distinguish between the followings - Public sector and joint sector industry',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
