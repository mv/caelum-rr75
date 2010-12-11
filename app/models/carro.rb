class Carro < ActiveRecord::Base

  # Sphinx
  define_index do
    indexes nome, :sortable => true

    has descricao, preco, created_at, updated_at
    set_property :delta => true
  end

end

