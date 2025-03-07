class Doctor
    attr_reader :name
    @@all = []
    
    def initialize(name)
    @name = name
    @@all << self
    end
    
    
    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
    end
    
    def appointments
        Appointment.all.select {|a| a.doctor == self}
    end
    
    def patients
        self.appointments.collect {|p| p.patient}
    end 
    
    def self.all
    @@all
    end
    
    
    
    end