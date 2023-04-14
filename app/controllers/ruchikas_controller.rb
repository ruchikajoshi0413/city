class RuchikasController < InheritedResources::Base
  require "prawn"
  # require "pdfkit"

  def index 
    # @ruchikas = Ruchika.all
    @ruchikas = Ruchika.order('id DESC').all
    respond_to do |format|
      format.html
      format.pdf do
          pdf = RuchikaPdf.new(@ruchikas)
                pdf = Prawn::Document.new
                # pdf.text "Hello"
          send_data pdf.render , filename: 'sproduct.pdf', type: 'application/pdf', disposition: 'inline'

        
                # send_data(sproducts_pdf, filename: 'sproduct.pdf', type: 'application/pdf')
      end
  end
   
  end

  # def show
  #   respond_to do |format|
  #     format.html
  #     format.pdf do
  #       render pdf: "Ruchika id: #{@ruchika.id}", 
  #       template: "ruchikas/show.html.erb" 
        
  #     end
  #   end
  # end

  private

    def ruchika_params
      params.require(:ruchika).permit(:title, :body)
    end

  # def pdf
    
  #   Prawn::Document.generate("example.pdf") do
  #     text "Hello world!"
  #     # send_data pdf.render , filename: 'sproduct.pdf', type: 'application/pdf', disposition: 'inline'
  #   end
  # end

  
end

