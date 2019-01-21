[
  { name: 'Mercy of Kalr', category: 'supply_carrier' },
  { name: 'Justice of Toren', category: 'troop_carrier' },
  { name: 'Sword of Amaat', category: 'war_ship' }
].each do |attributes|
  Ship.create!(attributes)
end
