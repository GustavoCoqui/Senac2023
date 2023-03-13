class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :pao_de_alho
      t.decimal :linguica_fina, precision: 10, scale: 3
      t.decimal :liguica_groca, precision: 10, scale: 3
      t.decimal :queijo, precision: 10, scale: 3
      t.decimal :frango, precision: 10, scale: 3
      t.decimal :porco, precision: 10, scale: 3
      t.decimal :costela_de_ovelha, precision: 10, scale: 3
      t.decimal :paleta_de_ovelha, precision: 10, scale: 3
      t.decimal :picanha, precision: 10, scale: 3
      t.decimal :file_mignion, precision: 10, scale: 3
      t.decimal :maminha, precision: 10, scale: 3
      t.decimal :entrecort, precision: 10, scale: 3
      t.decimal :costela, precision: 10, scale: 3
      t.decimal :vazio, precision: 10, scale: 3
      t.decimal :alcatra, precision: 10, scale: 3
      t.decimal :capa_de_file, precision: 10, scale: 3
      t.integer :sorvete
      t.integer :chocolate_barra
      t.integer :bombom
      t.integer :ceveja_lata
      t.integer :refrigerante
      t.integer :agua_sem_gas
      t.integer :agua_com_gas
      t.integer :espumante

      t.timestamps
    end
  end
end
