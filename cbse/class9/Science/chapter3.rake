
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "ATOMS AND MOLECULES", audio_link: 'chapter1.mp3')
        sections = ['Ancient Indian and Greek philosophers have always wondered about the unknown and unseen form of matter. The idea of divisibility of matter was considered long back in India,around 500 BC. An Indian philosopher Maharishi Kanad, postulated that if we go on dividing matter (padarth), we shall get smaller and smaller particles. Ultimately, a stage will come when we shall come across the smallest particles beyond which further division will not be possible. He named these particles Parmanu. Another Indian philosopher,Pakudha Katyayama, elaborated this doctrine and said that these particles normally exist in a combined form which gives us various forms of matter.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  CA 0.24 g sample of compound of oxygen and boron was found by analysis to contain 0.096 g of boron and 0.144 g of oxygen.Calculate the percentage composition of the compound by weight.',
                    'Q2:  When 3.0 g of carbon is burnt in 8.00 g oxygen, 11.00 g of carbon dioxide is produced. What mass of carbon dioxide will be formed when 3.00 g of carbon is burnt in 50.00 g of oxygen? Which law of chemical combination will govern your answer?',
                    'Q3:  What are polyatomic ions? Give examples.',
                    'Q4:  Write the chemical formulae of the following.(a) Magnesium chlorid (b) Calcium oxide (c) Copper nitrate (d) Aluminium chloride (e) Calcium carbonate.',
                    'Q5:  Give the names of the elements present in the following compounds. (a) Quick lime (b) Hydrogen bromide (c) Baking powder (d) Potassium sulphate.',
                    'Q6:  Calculate the molar mass of the following substances. (a) Ethyne, C2H2 (b) Sulphur molecule, S8 (c) Phosphorus molecule, P4 (Atomic mass of phosphorus = 31) (d) Hydrochloric acid, HCl (e) Nitric acid, HNO3',
                    'Q7: What is the mass of— (a) 1 mole of nitrogen atoms? (b) 4 moles of aluminium atoms (Atomic mass of aluminium  = 27)?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
