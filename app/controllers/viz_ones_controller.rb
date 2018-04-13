class VizOnesController < ApplicationController

  before_action :set_viz_ones

	def index
	end

  def search
    @viz_ones = VizOne.search(params)

    # This is going to render the partial, which will behanlded by viz_one.js
    render(:json => {
      :html => render_to_string(:partial => 'viz_ones/plot_item_container'),
    })
  end

  private

  def set_viz_ones
    @viz_ones = VizOne.all
  end

  def search_params
    params.require(:viz_one).permit(:ethnicity, :sex, :diabetes_type)
  end

end