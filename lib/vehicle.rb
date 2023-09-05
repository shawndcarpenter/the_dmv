require 'date'

class Vehicle
  attr_reader :vin, :year, :make, :model, :engine, :registration_date, :county
  attr_accessor :registration_date, :plate_type, :vin, :year, :make, :model, :engine, :county

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @county = vehicle_details[:county]
    @registration_date = nil
    @plate_type = nil
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end

end
