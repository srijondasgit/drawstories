
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Land, Soil, Water, Natural Vegetation and Wildlife Resources", audio_link: 'chapter1.mp3')
        sections = ['In a small village in Tanzania, Africa, Mamba gets up very early in the morning to fetch water. She has to walk a long way and returns after a few hours. She then helps her mother in the house and joins her brothers in taking care of their goats. All her family owns is a piece of rocky land around their small hut. Mamba’s father can barely grow some maize and beans on it after toiling hard. This is not enough to feed their family for the whole year.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Which are the two main climatic factors responsible for soil formation?',
                    'Q2:  Write any two reasons for land degradation today.',
                    'Q3:  Why is land considered an important resource?',
                    'Q4:  Name any two steps that government has taken to conserve plants and animals.',
                    'Q5:  Suggest three ways to conserve water.',
                    'Q6:  Discuss some more reasons which are responsible for changes of land use pattern. Has your place undergone any change in the land use pattern?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
