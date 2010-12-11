require 'spec_helper'

describe Notifier do
# pending "add some examples to (or delete) #{__FILE__}"
  describe "Email de carro NOVO" do
    carro = Factory.create(:carro)

    let(:mail) { Notifier.novo_carro(carro,"ferreira.mv@gmail.com")}

    it "cabeçalhos" do
      mail.subject.should eq(carro.nome)
      mail.to.should      eq(["ferreira.mv@gmail.com"])
      mail.from.should    eq(["lojacarro@caelum.com.br"])
    end

    it "exibe o corpo da mensagem" do
      mail.body.encoded.shoud match("Novo carro cadastrado")
      mail.body.encoded.shoud match(carro.nome)
      mail.body.encoded.shoud match(carro.descricao)
      mail.body.encoded.shoud match(carro.preco.to_s)
    end

  end # describe

end


