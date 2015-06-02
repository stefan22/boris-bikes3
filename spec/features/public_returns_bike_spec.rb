feature 'member of public returns bike' do
  scenario 'bike cannot be docked when station is full' do
    station = DockingStation.new
    20.times { station.dock Bike.new }
    expect { station.dock Bike.new}.to raise_error 'Docking station full'
  end
end
