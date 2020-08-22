
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Acids, Bases and Salts", audio_link: 'chapter1.mp3')
        sections = ['You have learnt in your previous classes that the sour and bitter tastes of food are due to acids and bases, respectively, present in them.If someone in the family is suffering from a problem of acidity after overeating, which of the following would you suggest as a remedy– lemon juice, vinegar or baking soda solution?',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why should curd and sour substances not be kept in brass and copper vessels?',
                    'Q2:  Which gas is usually liberated when an acid reacts with a metal? Illustrate with an example. How will you test for the presence of this gas?',
                    'Q3:  Metal compound A reacts with dilute hydrochloric acid to produce effervescence. The gas evolved extinguishes a burning candle. Write a balanced chemical equation for the reaction if one of the compounds formed is calcium chloride.',
                    'Q4:  Why do HCl, HNO3, etc., show acidic characters in aqueous solutions while solutions of compounds like alcohol and glucose do not show acidic character?',
                    'Q5:  Why does an aqueous solution of an acid conduct electricity?',
                    'Q6:  Why does dry HCl gas not change the colour of the dry litmus paper?',
                    'Q7:  While diluting an acid, why is it recommended that the acid should be added to water and not water to the acid?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
