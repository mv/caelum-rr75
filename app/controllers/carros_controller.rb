class CarrosController < ApplicationController

  def index
    @carro = Carro.new
    @carros = Carro.all
  end

  def create
    carro = Carro.new(params[:carro])
    carro.save

    redirect_to :action => "index"
  end

  def busca
    @query = params[:query]
      @carro = Carro.new
      @carros = Carro.search @query, :page      => params[:page],
                                     :per_page  => 3,
                                     :order     => :created_at,
                                     :sort_mode => :desc
      render :action => 'index'
  end

end
