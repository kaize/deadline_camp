namespace :app do

  task :fix_member_password => :environment do
    Member.find_each do |m|
      begin
        BCrypt::Password.new(m.password_digest)
      rescue BCrypt::Errors::InvalidHash
        m.password = SecureApp.generate_password
        m.save!
        puts "Member ##{m.id} changes password"
      end
    end
  end
end
