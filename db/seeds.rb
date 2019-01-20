[
  { name: 'Mercy of Kalr', ship_type: 'supply_carrier' },
  { name: 'Justice of Toren', ship_type: 'troop_carrier' },
  { name: 'Sword of Amaat', ship_type: 'war_ship' }
].each do |attributes|
  Ship.create!(attributes)
end
