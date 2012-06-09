Configus.build Rails.env do
  env :production do
    mailer do
      default_from "notreplay@deadline-camp.ru"
      default_url "deadline-camp.ru"
    end
  end

  env :staging, :parent => :production do
    basic_auth do
      username 'dc'
      password 'qwe'
    end

    mailer do
      default_from "notreplay@deadline-camp.kaize.ru"
      default_url "deadline-camp.kaize.ru"
    end
  end

  env :development, :parent => :production
  env :test, :parent => :development
end
