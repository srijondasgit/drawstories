
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Forest Society and Colonialism", audio_link: 'chapter1.mp3')
        sections = ['Take a quick look around your school and home and identify all the things that come from forests: the paper in the book you are reading, desks and tables, doors and windows, the dyes that colour your clothes, spices in your food, the cellophane wrapper of your toffee, tendu leaf in bidis, gum, honey, coffee, tea and rubber. Do not miss out the oil in chocolates, which comes from sal seeds, the tannin used to convert skins and hides into leather, or the herbs and roots used for medicinal purposes. Forests also provide bamboo, wood for fuel, grass, charcoal, packaging, fruits, flowers, animals,birds and many other things. In the Amazon forests or in the Western Ghats, it is possible to find as many as 500 different plant species in one forest patch.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Discuss how the changes in forest management in the colonial period affected the following groups of people:(a) Shifting cultivators (b)  Nomadic and pastoralist communities (c)) Firms trading in timber/forest produce (d) Plantation owners (e) Kings/British officials engaged in shikar (hunting)',
                    'Q2:  What are the similarities between colonial management of the forests in Bastar and in Java?',
                    'Q3:  Between 1880 and 1920, forest cover in the Indian subcontinent declined by 9.7 million hectares, from 108.6 million hectares to 98.9 million hectares. Discuss the role of the following factors in this decline: (a)Railways (b) Shipbuilding (c) Agricultural expansion (d)Commercial farming(e) Tea/Coffee plantations (f) Adivasis and other peasant users',
                    'Q4:  Why are forests affected by wars?',
                                       
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
