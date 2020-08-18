
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: '       ', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Desert Animals",
         audio_link: 'chapter1.mp3')

        sections = ['DESERTS are the driest places on earth and sometimes go for months, or even years, without rain. But even the desert animals cannot survive without water, or for long periods in the scorching sun, so they have had to find different ways of coping with the harsh conditions. For example, gerbils spend the hottest part of the day in cool underground burrows.And strange insects called darkling beetles are experts at catching drops of moisture on their legs, then lifting them into the air until the drops trickle down into their mouths. Not all deserts are endless seas of rolling sand dunes. Some are rocky or pebbly and dotted with small bushes while others are sprinkled with colourful flowers during the spring.', 
                   
                     'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  How do desert animals survive without water?",
                    "Q2:  How do mongooses kill snakes?",
                    "Q3:  How does the hump of the camels help them to survive when there is no water? ",
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
