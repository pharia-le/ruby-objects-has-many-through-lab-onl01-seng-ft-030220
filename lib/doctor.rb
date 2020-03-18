class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.save
  end
  
  def new_appointment(patient,date)
    appointment = Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.map {|appointment| appointment.patient}  
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end