
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['You have seen several kinds of plants and animals. However, there are other living organisms around us which we cannot see with eyes alone. These are called microorganisms or microbes. For example, you might have observed that during rainy season moist bread gets spoilt and its surface gets covered with greyish white patches. Observe these patches through a magnifying glass. You will see tiny, black rounded structures. Do you know what these structures are and where did these come from?',
                    '',
                    'Do you find tiny organisms moving around?',
                    '',
                    'These observations show that water and soil are full of tiny organisms, though not all of them fall into the category of microbes. These microorganisms or microbes are so small in size that they cannot be seen with the unaided eye. Some of these, such as the fungus that grows on bread, can be seen with a magnifying glass. Others cannot be seen without the help of a microscope. That is why these are called microorganisms or microbes.',
                    'Microorganisms are classified into four major groups. These groups are bacteria, fungi, protozoa and some algae. Some of these common microorganisms are shown in Figs. 2.1 - 2.4.',
                    'Viruses are also microscopic. They, however, reproduce only inside the cells of the host organism, which may be a bacterium, plant or animal. Some of the viruses are shown in Fig. 2.5. Common ailments like cold, influenza (flu) and most coughs are caused by viruses. Serious diseases like polio and chicken pox are also caused by viruses.',
                    'Diseases like dysentery and malaria are caused by protozoans whereas typhoid and tuberculosis (TB) are bacterial diseases.',
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
