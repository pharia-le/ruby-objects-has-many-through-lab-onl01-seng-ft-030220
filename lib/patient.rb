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
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end