# Encoding: utf-8
namespace :db do
  desc "Fill database with sample data"
  task sample_data: :environment do
    Page.find_by_slug('index').update_attributes(content:'
      <div class="span4 btop-first" id="btop-first">
        Разрабатываем прототип на основе вашей идеи, продумываем сценарии пользовательского взаимодействия и делаем удобный дизайн интерфейса для различных типов устройств.
      </div>
      <div class="span4 btop-second">
        Делаем сложные сайты и веб-сервисы с адаптивной версткой на PHP, Ruby on Rails, Java, HTML5. Разрабатываем приложения для Facebook, Vkontakte, Foursquare, Twitter и тд.
      </div>
      <div class="span4 btop-third">
        <p class="btop-third-vertical">
          <a class="btop-third-link" href="#">Наши<br>вакансии</a>
          <a class="btop-third-link" href="#">Скачать<br>презентацию</a>
        </p>
      </div>
    ')
    Page.create!(name: "Контакты",
                 slug: "contacts",
                 content:'
      <table class="contacts-table">
        <tbody>
          <tr>
            <td>
            <p>г. Москва, Центр дизайна ArtPlay, Нижняя Сыромятническая, 10, корп. 7, оф. 1<br />
            <br />
            +7 495 66 93 099</p>
            <a class="content-contacts-mail" href="mailto:contact@balticit.ru">contact@balticit.ru</a></td>
            <td>
            <p>г. Калининград, ул. Согласия 30а<br />
            <br />
            +7 4012 909 040</p>
            <a class="content-contacts-mail" href="mailto:contact@balticit.ru">contact@balticit.ru</a></td>
            <td>&nbsp;</td>
          </tr>
        </tbody>
      </table>
    ')

    Page.create!(name: "Нам доверяют",
                 slug: "doverie")
    Page.create!(name: "Вакансии",
                 slug: "vacansy",
                 hidden: 1)
    # 99.times do |n|
    #   name  = Faker::Name.name
    #   email = "example-#{n+1}@railstutorial.org"
    #   password  = "password"
    #   User.create!(name: name,
    #                email: email,
    #                password: password,
    #                password_confirmation: password)
    # end
  end
end
