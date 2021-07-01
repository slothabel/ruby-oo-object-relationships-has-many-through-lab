#a Patient has many Doctors thru its Appt's & a Patient has many appt's
class Patient
    attr_accessor :name, :doctor, :appointments

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    # def appointments
    #     Appointment.all.select {|i| i.patient == self}
    # end

    def doctors 
        appointments.map {|i| i.doctor}
    end


end
