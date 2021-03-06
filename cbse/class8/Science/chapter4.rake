
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Materials: Metals and Non-Metals", audio_link: 'chapter1.mp3')
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
                    'Q1:  Which of the following can be beaten into thin sheets? (a) Zinc (b) Phosphorus (c) Sulphur (d) Oxygen',
                    'Q2:  Give reasons for the following : (a) Aluminium foils are used to wrap food items. (b) Immersion rods for heating liquids are made up of metallic substances. (c) Copper cannot displace zinc from its salt solution. (d) Sodium and potassium are stored in kerosene.',
                    'Q3:  Can you store lemon pickle in an aluminium utensil? Explain.',
                    'Q4:  What happens when (a) Dilute sulphuric acid is poured on a copper plate? (b) Iron nails are placed in copper sulphate solution? Write word equations of the reactions involved.',
                    'Q5:  One day Reeta went to a jeweller’s shop with her mother. Her mother gave old gold jewellery to the goldsmith to polish. Next day when they brought the jewellery back, they found that there was a slight loss in its weight. Can you suggest a reason for the loss in weight?',
                    'Q6:  Saloni took a piece of burning charcoal and collected the gas evolved in a test tube. (a) How will she find the nature of the gas ? (b) Write down word equations of all the reactions taking place in this process.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
