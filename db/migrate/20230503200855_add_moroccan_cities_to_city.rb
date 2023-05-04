class AddMoroccanCitiesToCity < ActiveRecord::Migration[6.1]
  def up
    moroccan_cities = [
      'Agadir',
      'Al Hoceima',
      'Azilal',
      'Beni Mellal',
      'Benslimane',
      'Boujdour',
      'Boulemane',
      'Casablanca',
      'Chefchaouen',
      'Chichaoua',
      'El Hajeb',
      'El Jadida',
      'Errachidia',
      'Essaouira',
      'Fès',
      'Figuig',
      'Guelmim',
      'Ifrane',
      'Kénitra',
      'Khemisset',
      'Khénifra',
      'Khouribga',
      'Laâyoune',
      'Larache',
      'Marrakech',
      'Médiouna',
      'Meknès',
      'Mohammedia',
      'Nador',
      'Ouarzazate',
      'Ouezzane',
      'Oujda',
      'Rabat',
      'Safi',
      'Salé',
      'Sefrou',
      'Settat',
      'Sidi Kacem',
      'Tan-Tan',
      'Tanger',
      'Taounate',
      'Taroudant',
      'Tata',
      'Taza',
      'Tétouan',
      'Tiznit',
      'Zagora'
    ]

    moroccan_cities.each do |city_name|
      City.create!(name: city_name)
    end
  end

  def down
    City.delete_all
  end
end
