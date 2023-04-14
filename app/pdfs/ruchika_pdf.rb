class RuchikaPdf < Prawn::Document
    def initialize(ruchikas)
        super()
        @ruchikas = Ruchika.order("id DESC").all
        ruchika_id
        
    end
    def ruchika_id
        text "Ruchika"
        table ruchika_id_all do
            row(0).font_style = :bold
            column(1..3).align = :right
        end
        
    end
    def ruchika_id_all
        [["title" , "body"]]+
        @ruchikas.map do |ruchika|
            [ruchika.title,ruchika.body]
        end
    end
end