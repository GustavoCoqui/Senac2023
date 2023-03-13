class Order < ApplicationRecord
  enum pagamento: {Pix: 1, Cartao: 2, Especie: 3}
end
