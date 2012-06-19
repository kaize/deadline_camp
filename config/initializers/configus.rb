# encoding: utf-8
Configus.build Rails.env do
  env :production do
    mailer do
      default_from "notreplay@deadline-camp.ru"
      default_url "deadline-camp.ru"
    end
    mail do
      main 'info@deadline-camp.ru'
    end
    pages do
      contacts do
        id 1
        uri "contacts"
        name "Контакты"
      end
      program do
        id 2
        uri "program"
        name "Программа"
      end
      provider do
        id 3
        uri "provider"
        name "Организаторы"
      end
      partners do
        id 4
        uri "partners"
        name "Партнеры"
      end
      place do
        id 5
        uri "place"
        name "Место проведения"
      end
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
