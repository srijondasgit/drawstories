 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "KINGDOMS, KINGS AND AN EARLY REPUBLIC", audio_link: 'chapter1.mp3')

        sections = ['Choosing leaders or rulers by voting is something that has become common during the last fifty years or so. How did men become rulers in the past? Some of the rajas we read about in Chapter 5 were probably chosen by the jana, the people.But, around 3000 years ago, we find some changes taking place in the ways in which rajas were chosen. Some men now became recognised as rajas by performing very big sacrifices.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Who were the groups who could not participate in the assemblies of the ganas?",
                    "Q2: Why did the rajas of mahajanapadas build forts?",
                    "Q3: In what ways are present-day elections different from the ways in which rulers were chosen in janapadas?",
                    
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
