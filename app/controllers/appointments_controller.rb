class AppointmentsController < ApplicationController

    def update
        @patient = Patient.find(params[:patient_id])
        @appointment = @patient.appointments.find(params[:id])
        @appointment.update(appointment_params)
        if @appointment.valid?
          render json: {message: 'Appointment was successfully updated.', data: @appointment}
        else
          render json: {message: @appointment.errors}, status: :unprocessable_entity
        end
      end
      
      def create_appointment
        @patient = Patient.find(params[:patient_id])
        @doctor = Doctor.find(params[:doctor_id])
        @appointment = @patient.appointments.create(doctor: @doctor, appointment_date: params[:appointment_date], reason_for_visit: params[:reason_for_visit])
        if @appointment.valid?
          render json: { message: 'Appointment was successfully created.'}, status: :created
        else
          render json: { message: @appointment.errors }, status: :unprocessable_entity
        end
      end

      private

      def appointment_params
        params.require(:appointment).permit(:appointment_date, :reason_for_visit)
      end
end
