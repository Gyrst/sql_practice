DB.create_table :monsters do
  primary_key :id
  String :name
  Int :legs
  Int :arms
  String :characteristics
end

monsters = DB[:monsters] 


monsters.insert(name: 'Cyril', legs: Faker::Address.building_number, arms:Faker::Address.building_number, characteristics:'big, smelly')
monsters.insert(name: 'Tiny', legs: Faker::Address.building_number, arms:Faker::Address.building_number, characteristics:'small, stinky, loud')
monsters.insert(name: 'Niall', legs: Faker::Address.building_number, arms:Faker::Address.building_number, characteristics:'flatulent')
monsters.insert(name: 'Umph', legs: Faker::Address.building_number, arms:Faker::Address.building_number, characteristics:'idiotic, nasty')
monsters.insert(name: 'Martin', legs: Faker::Address.building_number, arms:Faker::Address.building_number, characteristics:'mad, stupid, bad-breath')


def expected
  DB[%q(
    SELECT id, name, 
CASE 
  WHEN position(','IN characteristics) >0 THEN LEFT(characteristics, position(',' IN characteristics)-1) 
  ELSE characteristics 
  END 
  AS characteristic
FROM monsters
)].to_a
  end

