class SproductsController < InheritedResources::Base
  require "prawn"
  # def pdf
   
    # pdf = Prawn::Document.generate("hello.pdf") do
    #   text "Hello World!"
    # end

    # @sproducts = Sproduct.find(params[:id])
    # pdf = Prawn::Document.new
    # pdf.text @sproducts.title ,size: 20, style: :bold 
    # pdf.text @sproducts.description ,size: 20, style: :bold
    # send_data(pdf.render ,
    #           filename: "#{@sproducts.title}.pdf",
    #           type:"application/pdf",
    #           disposition:"inline")
  # end

  def index 
    @sproducts = Sproduct.order('id DESC').all
    respond_to do |format|
      format.html
      format.pdf do
          pdf = SproductPdf.new(@sproducts)
          # pdf = Prawn::Document.new
          # pdf.text "Hello"
          send_data pdf.render , filename: 'sproduct.pdf', type: 'application/pdf', disposition: 'inline'

        
            # send_data(sproducts_pdf, filename: 'sproduct.pdf', type: 'application/pdf')
      end
    end
  end

  private

    def sproduct_params
      params.require(:sproduct).permit(:title, :description, :image, :alignment)
    end

end
