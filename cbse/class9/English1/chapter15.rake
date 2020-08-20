
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Reach for the Top", audio_link: 'chapter1.mp3')
        sections = ['The only woman in the world who has scaled Mt Everest twice was born in a society where the birth of a son was regarded as a blessing,and a daughter, though not considered a curse, was not generally welcome. When her mother was expecting Santosh, a travelling ‘holy man’, giving her his blessing, assumed that she wanted a son. But, to everyone’s surprise, the unborn child’s grandmother, who was standing close by, told him that they did not want a son. The ‘holy man’ was also surprised! Nevertheless, he gave the requested blessing . .. and as destiny would have it, the blessing seemed to work. Santosh was born the sixth child in a family with five sons, a sister to five brothers. She was born in the small village of Joniyawas of Rewari District in Haryana',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why was the ‘holy man’ who gave Santosh’s mother his blessings surprised?',
                    'Q2:  Give an example to show that even as a young girl Santosh was not ready to accept anything unreasonable',
                    'Q3:  Why was Santosh sent to the local school?',
                    'Q4:  When did she leave home for Delhi, and why?',
                    'Q5:  Why did Santosh’s parents agree to pay for her schooling in Delhi? What mental qualities of Santosh are brought into light by this incident?',
                 ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
