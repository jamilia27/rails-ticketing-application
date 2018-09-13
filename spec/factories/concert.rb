FactoryBot.define do
  factory :concert do
    id 1
    name "Leon Bridges"
    date Date.new(2018, 10, 4)
    genre "R&B"
    venue "The Fillmore Philadelphia"
  end
end
