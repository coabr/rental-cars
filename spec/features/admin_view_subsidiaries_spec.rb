require 'rails_helper'

feature 'Admin view subsidiaries' do
	scenario 'successfully' do
		# Arrange
		Subsidiary.create!(name: 'Fiori', cnpj: '53.306.981/0001-66' , address: 'Estrada do encanamento, 1752') 
		Subsidiary.create!(name: 'Localiza', cnpj: '23.791.285/0001-21' , address: 'Estrada do arraial, 1777') 
		

		#Act
		visit root_path
		click_on 'Filiais'
		
		#Assert
		expect(page).to have_content('Fiori')
		expect(page).to have_content('Estrada do encanamento, 1752')
		expect(page).to have_content('Localiza')
		expect(page).to have_content('Estrada do arraial, 1777')
	end
end
