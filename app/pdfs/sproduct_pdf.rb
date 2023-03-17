class SproductPdf < Prawn::Document
    def initialize(sproducts)
        super()
        @sproducts = Sproduct.order("id DESC").all
        sproduct_id
        
    end
    def sproduct_id
        text "Ruchika"
        table sproduct_id_all do
            row(0).font_style = :bold
            column(1..3).align = :right
        end
        
    end
    def sproduct_id_all
        [["title" , "description" , "image" , "alignment"]]+
        @sproducts.map do |sproduct|
            [sproduct.title,sproduct.description,sproduct.image,sproduct.alignment]
        end
    end
end