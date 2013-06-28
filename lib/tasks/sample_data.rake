# Encoding: utf-8
namespace :db do
  desc "Fill database with sample data"
  task sample_data: :environment do
    Page.create!(slug: "index") unless Page.find_by_slug('index')
    Page::Translation.where(page_id: Page.find_by_slug('index'), locale: 'ru').create!(
      name: 'Проекты',
      content:'
      <div id="btop-container" class="btop-container-height">
        <div class="span4 btop-first">
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
      </div>
    ')
    Page::Translation.where(page_id: Page.find_by_slug('index'), locale: 'en').create!(
      name: 'Projects',
      content:'
      <div id="btop-container" class="btop-container-height">
        <div class="span4 btop-first">
          Developing a prototype based on your idea, think through scenarios of user interaction and interface design makes it convenient for different types of devices.
        </div>
        <div class="span4 btop-second">
          We make complex websites and web services with adaptive layout for PHP, Ruby on Rails, Java, HTML5. Develop applications for Facebook, Vkontakte, Foursquare, Twitter and more.
        </div>
        <div class="span4 btop-third">
          <p class="btop-third-vertical">
            <a class="btop-third-link" href="#">Our jobs</a>
            <a class="btop-third-link" href="#">Download<br>presentation</a>
          </p>
        </div>
      </div>
    ')
    Page.create!(slug: "contacts")
    Page::Translation.where(page_id: Page.find_by_slug('contacts'), locale: 'en').create!(
      name: 'Contacts',
      content:'
      <table class="contacts-table">
        <tbody>
          <tr>
            <td>
            <p>Moscow, ArtPlay<br />
            <br />
            +7 495 66 93 099</p>
            <a class="content-contacts-mail" href="mailto:contact@balticit.ru">contact@balticit.ru</a></td>
            <td>
            <p>Kaliningrad, Soglasiya st. 30а<br />
            <br />
            +7 4012 909 040</p>
            <a class="content-contacts-mail" href="mailto:contact@balticit.ru">contact@balticit.ru</a></td>
            <td>&nbsp;</td>
          </tr>
        </tbody>
      </table>
    ')
    Page::Translation.where(page_id: Page.find_by_slug('contacts'), locale: 'ru').create!(
      name: 'Контакты',
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
  end
end
