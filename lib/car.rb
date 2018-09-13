class Car
  PASSENGER_LIMIT_DEFAULT = 4
  TOP_SPEED_DEFAULT = 120

  attr_reader :speed, :passengers, :engine, :person

  def initialize(config, person = Person.new("Harry", "Potter", 35), engine = Engine.new)
    @top_speed = config[:top_speed] || TOP_SPEED_DEFAULT
    @passenger_limit = config[:passenger_limit] || PASSENGER_LIMIT_DEFAULT
    @speed = 0
    @passengers = []
    @person = person
    @engine = engine
  end

  def set_driver
    # adds the driver based on age of person
    fail 'Driver Age Error' unless person.age > 18

    @driver = person
  end

  def driver_name
    # driver has a name
    fail 'No Driver Error' if driver.nil?
    person.driver_name
  end

  def turn_on_engine
    # turns the engine on
    fail 'No Driver Error' if driver.nil?

    engine.switch_on
  end

  def turn_off_engine
    # turns the engine off
    fail 'No Driver Error' if driver.nil?

    engine.switch_off
  end

  def accelerate(increment, seconds)
     # sets speed
    fail 'Engine Off Error' unless engine.engine_on

    seconds.times do
      break if speed >= top_speed
      @speed += increment
    end
  end

  def brake(seconds)
    # decreases speed
    fail 'Engine Off Error' unless engine.engine_on

    seconds.times do
      break if speed <= 1
      @speed -= 1
    end
  end

  def add(passenger)
    # put person in car
    fail 'Limit Reached Error' if passengers.count >= passenger_limit

    @passengers << passenger
  end

  private

  attr_reader :passenger_limit, :top_speed, :driver
end
