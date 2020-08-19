class CarCategory < ApplicationRecord
  validates :name, :daily_rate, :car_insurance, :third_party_insurance, presence: true # nao precisa do { message: 'não pode ficar em branco' } porque o projeto já contém o i18n, onde blank é traduzido para não pode ficar em branco
  validates :name, uniqueness: { case_sensitive: false}
end
