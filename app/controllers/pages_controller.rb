class PagesController < ApplicationController
  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Page.find(params[:id])
  end

  def search
    @searched_name = params[:name]
    @contents = []
    unless @searched_name.blank?
      @contents = Content.where("body like ?", "%#{@searched_name}%").or(
                  Content.where("title like ?", "%#{@searched_name}%"))
      @domain = request.domain
    end
  end
  def callback
    @content = Content.find(params[:id])
  end
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:name)
    end
end
