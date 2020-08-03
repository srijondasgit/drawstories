
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['You are familiar with a number of materials like iron, aluminium, copper, etc. Some materials have been given in Table 4.1.',
                    '',
                    'Can you name the materials which are metals? The rest of the materials in Table 4.1 are non-metals. Metals can be distinguished from non-metals on the basis of their physical and chemical properties. Recall that lustre and hardness are physical properties.',
                    '',
                    'Have you ever seen a blacksmith beating an iron piece or an article made up of iron, like a spade, a shovel, an axe? Do you find a change in the shape of these articles on beating? Would you expect asimilar change if we try to beat a wood log ?',
                    '',
                    'You saw that the shape of the iron nail and the aluminium wire changed on beating. If they were beaten harder these could be changed into sheets. You might be familiar with silver foil used for decorating sweets. You must also be familiar with the aluminium foil used for wrapping food. The property of metals by which they can be beaten into thin sheets is called malleability. This is a characteristic property of metals. As you must have noticed, materials like coal and pencil lead do not show this property. Can we call these as metals?',
                    'Can you hold a hot metallic pan which is without a plastic or a wooden handle and not get hurt? Perhaps not! Why? Try to list some other experiences in which a wooden or plastic handle protects you from being hurt while handling hot things. On the basis of these experiences what can you say about the conduction of heat by wood and plastic?',
                    'You must have seen an electrician using his screw driver. What kind of handle does it have? Why?',
                    
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
