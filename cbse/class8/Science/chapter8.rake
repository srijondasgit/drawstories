
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['You have already learnt that things around us are either living or non-living. Further, you may recall that all living organisms carry out certain basic functions. Can you list these functions?',
                    'Different sets of organs perform the various functions you have listed. In this chapter, you shall learn about the basic structural unit of an organ, which is the cell. Cells may be compared to bricks. Bricks are assembled to make a building. Similarly, cells are assembled to make the body of every organism.',
                    '8.1 Discovery of the CellRobert Hooke in 1665 observed slices of cork under a simple magnifying device. Cork is a part of the bark of a tree. He took thin slices of cork and observed them under a microscope. He noticed partitioned boxes or compartments in the cork slice (Fig. 8.1).',
                    '',
                    'These boxes appeared like a honey- comb.',
                    'He also noticed that one box was separated from the other by a wall or partition. Hooke coined the term \'cell\' for each box. What Hooke observed as boxes or cells in the cork were actually dead cells.',
                    'Cells of living organisms could be observed only after the discovery of improved microscopes. Very little was known about the cell for the next 150 years after Robert Hooke\'s observations. Today, we know a lot about cell structure and its functions because of improved microscopes having high magnification.',
                    '8.2 The CellBoth, bricks in a building and cells in the living organisms, are basic structural units [Fig. 8.2(a), (b)]. The buildings, though built of similar bricks, have different designs, shapes and sizes. Similarly, in the living world, organisms differ from one another but all are made up of cells. Cells in the living organisms are complex living structures unlike non-living bricks.',              
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
