require "spec_helper"

describe Carro do

  include CarroSpec

  before do
    @carro = Carro.new
  end

  ###
  ### Exemplos
  ###
  it "deveria ser novo" do
    Carro.new.should be_novo
  end

  it "deveria ter uma comissao de 5% do valor" do
    @carro.preco = 32_000
    @carro.calcula_comissao.should be == 1_600.00
  end

  it do
    @carro.should_not be_an_instance_of(Moto)
  end

end

# mais exemplos

# fixtures :carros

# it "deveria usar fixtures" do
#   monza = carros(:monza)
#   monza.nome.should be      == 'Monza'
#   monza.descricao.should be == 'Monza vermelho 92'
#   monza.preco.should be     == '12000'

#   monza = carros(:fusca)
#   fusca.nome.should be      == 'Fusca'
#   fusca.descricao.should be == 'Fusca gelo 87'
#   fusca.preco.should be     == '9000'

#   tempra = carros(:tempra)
#   tempra.nome.should be      == 'Tempra'
#   tempra.descricao.should be == 'Tempra roxo 98'
#   tempra.preco.should be     == '19000'

# end

