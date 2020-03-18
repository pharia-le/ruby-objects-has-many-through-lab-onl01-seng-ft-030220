class Appointment
  
  attr_accessor :name
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @name = name
    @patient = patient
    @doctor = doctor
    self.save
  end

  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end