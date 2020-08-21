 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "THE MAKING OF REGIONAL CULTURES", audio_link: 'chapter1.mp3')

        sections = ['One of the commonest ways of describing people is in terms of the language they speak. When we refer to a person as a Tamil or an Oriya, this usually means that he or she speaks Tamil or Oriya and lives in Tamil Nadu or Orissa. We also tend to associate each region with distinctive kinds of food, clothes, poetry, dance, music and painting. Sometimes we take these identities for granted and assume that they have existed from time immemorial. However, the frontiers separating regions have evolved over time (and in fact are still changing). Also, what we understand as regional cultures today are often the product of complex processes of intermixing of local traditions with ideas from other parts of the subcontinent. ', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What is Manipravalam? Name a book written in that language.",
                    "Q2: Who were the major patrons of Kathak?",
                    "Q3: What are the important architectural features of the temples of bengal",
                    "Q4: Why did minstrels proclaim the achievements of heroes?",
                    "Q5: Why do we know much more about the cultural practices of rulers than about those of ordinary people?",
                    "Q6: Why did conquerors try to control the temple of Jagannatha at Puri?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
