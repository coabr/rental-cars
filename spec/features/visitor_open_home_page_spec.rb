require 'rails_helper'

feature 'Visitor open home page' do
  scenario 'successfully' do
    # 3 As -> Arrange (prepara), Act (executa), Assert (valida)

    # Arrange
    #cria dados no banco de dados. nesse teste nao temos o arrange

    # Act
    visit root_path

    # Assert
    expect(page).to have_content('Rental Cars')
    expect(page).to have_content('Bem vindo ao sistema de gestão de locação')
  end
end