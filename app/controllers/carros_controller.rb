class CarrosController < ApplicationController

  respond_to :rss, :only => :feed

  def index
    @carro = Carro.new
    @carros = Carro.all
  end

  def create
    carro = Carro.new(params[:carro])
    carro.save

    redirect_to :action => "index"
  end

  ## Sphinx
  def busca
    @query = params[:query]
      @carro = Carro.new
      @carros = Carro.search @query, :page      => params[:page],
                                     :per_page  => 3,
                                     :order     => :created_at,
                                     :sort_mode => :desc
      render :action => 'index'
  end

  ## RSS feed
  def feed
    @carros = Carro.limit(30).all
    respond_with @carros
  end

end

