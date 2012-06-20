##
# Backup
# Generated Template
#
# For more information:
#
# View the Git repository at https://github.com/meskyanichi/backup
# View the Wiki/Documentation at https://github.com/meskyanichi/backup/wiki
# View the issue log at https://github.com/meskyanichi/backup/issues
#
# When you're finished configuring this configuration file,
# you can run it from the command line by issuing the following command:
#
# $ backup perform -t my_backup [-c <path_to_configuration_file>]

Backup::Model.new(:deadline_camp_production, "Deadline-Camp Backup") do
  database PostgreSQL do |db|
    db.name     = "deadline_camp_production"
    db.username = "deadline_camp_production"
    db.password = "mIKBzvbllRvwJObaSTkeg"
    #db.host               = "127.0.0.1"
  end

  compress_with Gzip do |compression|
    compression.best = true
    compression.fast = false
  end

  store_with Local do |local|
    local.path = "/var/tmp/"
    local.keep = 5
  end
end
