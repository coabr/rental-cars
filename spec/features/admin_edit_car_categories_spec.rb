require 'rails_helper'

feature 'Admin edits car category' do
  scenario 'And edit Mara category' do
    CarCategory.create(name: 'Mara', daily_rate: 50, car_insurance: 50, third_part_insurance: 30)

    visit root_path
    click_on 'Categorias de Carros'
    click_on 'Categoria Mara'
    click_on 'Editar'
    fill_in 'Nome', with: 'Maravilha'
    click_on 'Enviar'

    expect(page).to have_content('Categoria Maravilha')
  end

  scenario 'successfully' do
    CarCategory.create(name: 'A', daily_rate: 20, car_insurance: 65, third_part_insurance: 20)

    visit root_path
    click_on 'Categorias de Carros'
    click_on 'Categoria A'
    click_on 'Editar'

    fill_in 'Nome', with: ''
    fill_in 'Daily Rate', with: ''
    fill_in 'Car Insurance', with: ''
    fill_in 'Third Part Insurance', with: ''

    click_on 'Enviar'

    expect(page).to have_content('Preencha todos os campos')
  end

  scenario 'successfully' do
    CarCategory.create(name: 'A', daily_rate: 50, car_insurance: 50, third_part_insurance: 30)
    CarCategory.create(name: 'B', daily_rate: 40, car_insurance: 60, third_part_insurance: 10)

    visit root_path
    click_on 'Categorias de Carros'
    click_on 'Categoria A'
    click_on 'Editar'

    fill_in 'Nome', with: 'B'

    click_on 'Enviar'

    expect(page).to have_content('Esta categoria já foi criada')
  end
end