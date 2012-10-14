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

    end_reg_time '2012-07-03 13:00:00'

    news do
      welcome_count 2
    end

    photos do
      main_galary_limit 6
    end

    dicts do
      language [
        {:name => "Английский", :id => 1},
        {:name => "Французский", :id => 2},
        {:name => "Немецкий", :id => 3}
      ]
      program_lang [
        {:name => "Ruby", :id => 1},
        {:name => "C", :id => 2},
        {:name => "C++", :id => 3},
        {:name => "C#", :id => 4},
        {:name => "Java", :id => 5},
        {:name => "PHP", :id => 6},
        {:name => "HTML", :id => 7},
        {:name => "JavaScript", :id => 8},
        {:name => "SQL", :id => 9},
        {:name => "Objectiv-C", :id => 10},
        {:name => "Delphi", :id => 11}
      ]
      database [
        {:name => "PostgreSQL", :id => 1},
        {:name => "MySQL", :id => 2},
        {:name => "MS SQL", :id => 3},
        {:name => "Interbase", :id => 4}
      ]
      os [
        {:name => "Windows", :id => 1},
        {:name => "Unix/Linux/FreeBSD/etc", :id => 2},
        {:name => "iOS/MacOS", :id => 3}
      ]
      ide [
        {:name => "PhpStorm", :id => 1},
        {:name => "RubyMine", :id => 2},
        {:name => "Visual Studio", :id => 3},
        {:name => "Eclipse", :id => 4},
        {:name => "C++ Builder", :id => 5},
        {:name => "NetBeans", :id => 6},
        {:name => "Qt Creator", :id => 7},
        {:name => "X Code", :id => 8},
        {:name => "Lazarus", :id => 9},
        {:name => "Embarcadero", :id => 10}
      ]
      other [
        {:name => "Системы отслеживания ошибок", :id => 1},
        {:name => "Системы управления версиями", :id => 2}
      ]
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
