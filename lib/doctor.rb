#A Doctor has many Appt's & has many Patients through its Appointments 
require 'pry'
class Doctor
    attr_accessor :name, :appointments

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|i| i.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
    # binding.pry
        appointments.map {|i| i.patient}
    end



        
end
