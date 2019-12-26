class MeetingMailer < ApplicationMailer
    def meeting_mail(participant, participant2, meeting)
        @participant = participant
        @other = participant2
        @meeting = meeting
        mail(to: participant.email, subject: 'You have a new meeting')
    end
end
