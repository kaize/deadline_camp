require 'test_helper'

class MemberMailerTest < ActionMailer::TestCase
  def test_welcome_email
    @member = create :member
    email = MemberMailer.welcome(@member).deliver
    assert !ActionMailer::Base.deliveries.empty?
    assert_equal [@member.email], email.to
    assert_equal I18n.t('member_mailer.welcome.subject'), email.subject
  end

  def test_approved_email
    @member = create :member
    email = MemberMailer.approved(@member).deliver
    assert !ActionMailer::Base.deliveries.empty?
    assert_equal [@member.email], email.to
    assert_equal I18n.t('member_mailer.approved.subject'), email.subject
  end

  def test_remind_password_email
    @member = create :member
    email = MemberMailer.remind_password(@member).deliver
    assert !ActionMailer::Base.deliveries.empty?
    assert_equal [@member.email], email.to
    assert_equal I18n.t('member_mailer.remind_password.subject'), email.subject
  end
end
