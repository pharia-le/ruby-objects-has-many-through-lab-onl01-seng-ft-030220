class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.save
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)  
  end
  
  def appointments
    
  end
  
  def doctors
    
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end