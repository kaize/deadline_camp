class MemberMailer < ActionMailer::Base
  layout "email"
  default_url_options[:host] = configus.mailer.default_url
  default from: configus.mailer.default_from

  def welcome(member)
    @member = member
    mail(to: "#{@member.full_name} <#{@member.email}>")
  end

  def approved(member)
    @member = member
    mail(to: "#{@member.full_name} <#{@member.email}>")
  end

  def remind_password(member)
    @member = member
    mail(to: "#{@member.full_name} <#{@member.email}>")
  end
end
