
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['We saw in Class VII that Paheli and Boojho had visited the forest along with Prof. Ahmad and Tibu. They were eager to share their experiences with their classmates. Other children in the class were also eager to share their experiences as some of them had visited Bharatpur Sanctuary. Some others had heard about Kaziranga National Park, Lockchao Wildlife Sanctuary, Great Nicobar Biosphere Reserve and Tiger Reserve, etc.',
                    '',
                    '7.1 Deforestation and Its CausesA great variety of plants and animals exists on earth. They are essential for the wellbeing and survival of mankind. Today, a major threat to survival of these organisms is deforestation. We know that deforestation means clearing of forests and using that land for other purposes. Trees in the forest are cut for some of the purposes mentioned below: Procuring land for cultivation.',
                    ' Building houses and factories.',
                    ' Making furniture or using wood asfuel.',
                    '',
                    'Some natural causes of deforestation are forest fires and severe droughts.',
                    '',
                    '7.2  Consequences of DeforestationPaheli and Boojho recalled the consequences of deforestation. They remembered that deforestation increases the temperature and pollution level on the earth. It increases the level of carbon dioxide in the atmosphere. Ground water level also gets lowered. They know that deforestation disturbs the balance in nature. They were told by Prof. Ahmad that if cutting of trees continues, rainfall and the fertility of the soil will decrease.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  ',
                    'Q2:  ',
                    'Q3:  ',
                    'Q4:  ',
                    'Q5:  ',
                    'Q6:  ',
                    'Q7:  ',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
