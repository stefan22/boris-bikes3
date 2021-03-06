feature 'public accesses a working bike' do
  scenario 'docking station releases a working bike' do
    station = DockingStation.new
    station.dock Bike.new
    bike = station.release_bike
    expect(bike).to be_working
  end

  scenario 'docking stations cannot release bikes when none are available' do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error 'No bikes available'
  end

end
