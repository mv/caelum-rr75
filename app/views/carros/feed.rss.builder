
xml.rss :version => "2.0" do
  xml.channel do

    xml.title "Loja de carros"
    xml.link "http://localhost:3000/"
    xml.description "RSS da Loja de Carros"
    xml.language "pt-br"

    @carros.each do |carro|
      xml.item do
        xml.title carro.nome
        xml.description carro.descricao
      end # item
    end   # each

  end # channel

end # rss

