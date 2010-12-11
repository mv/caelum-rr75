class CarroObserver < ActiveRecord::Observer

  def after_create(carro)
    Notifier.novo_carro( carro, "ferreira.mv@gmail.com" ).deliver
  end

end
