class Contact < MailForm::Base
    attributes :name, validate: true
    attributes :email, validate: /\A[^@\s]+@[^@\s]+\z/i
    attributes :subject
    attributes :message
    attributes :phone
  
    def headers
        {
            :subject => %('#{subject}'),
            :to => 'mattyerkes23@gmail.com',
            :from => %("#{name}" <#{email}>)
        }
    end
  end
