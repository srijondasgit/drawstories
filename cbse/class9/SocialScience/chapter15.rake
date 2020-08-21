
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "NATURAL VEGETATION AND WILDLIFE", audio_link: 'chapter1.mp3')
        sections = ['Have you observed the type of trees, bushes, grasses and birds in the fields and parks in and around your school? Are they similar or there are variations? India being a vast country you can imagine the types of bio-forms available throughout the country.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What factors are responsible for the distribution of plants and animals in India?',
                    'Q2:  What is a bio-reserve? Give two examples.',
                    'Q3:  Name two animals having habitat in tropical and montane type of vegetation.',
                    'Q4:  Distinguish between (i) Flora and Fauna (ii) Tropical Evergreen and Deciduous forests',
                    'Q5:  Name different types of Vegetation found in India and describe the vegetation of high altitudes.',
                    'Q6:  Quite a few species of plants and animals are endangered in India. Why?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
