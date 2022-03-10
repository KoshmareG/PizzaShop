class AddProducts < ActiveRecord::Migration[7.0]
  def change
    Product.create :title => 'Карбонара', :description => 'Классика - всегда удачный выбор для избалованных гурманов, которых вообще сложно чем-то удивить. Buon appetito!', :price => 739, :size => 28, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/carbonara.jpg'

    Product.create :title => 'Маргарита', :description => 'Истинным ценителям аутентичной итальянской кухни мы предлагаем заказать пиццу «Маргарита».', :price => 529, :size => 28, :is_spicy => false, :is_veg => true, :is_best_offer => true, :path_to_image => '/images/margarita.jpg'

    Product.create :title => 'Пепперони', :description => 'Отличительной чертой пиццы «Пепперони» является ее остро-жгучий вкус. Идеальна для любителей острого!', :price => 619, :size => 40, :is_spicy => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/pepperoni.jpg'

    Product.create :title => 'Вегетарианская', :description => 'Пицца с говорящим названием отнюдь не только для вегетарианцев. Ни одно животное не пострадало!', :price => 559, :size => 30, :is_spicy => false, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/vegetarian.jpeg'

    Product.create :title => 'Четыре сезона', :description => 'Комбинированный вариант пиццы, который позволит отведать вам сразу 4 вкуса за один подход.', :price => 569, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/4season.jpeg'

    Product.create :title => 'Гавайская', :description => 'Сладкий ананас и нежное куриное мясо на тонком тесте под корочкой запеченного сыра - это настоящий праздник вкуса.', :price => 689, :size => 28, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/havaian.jpg'

    Product.create :title => 'Сицилийская', :description => 'Наша яркая новинка с пепперони, грибами и болгарским перцем! Такая же яркая на вкус как и на цвет.', :price => 629, :size => 35, :is_spicy => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/sicilian.jpg'

    Product.create :title => 'Неаполитанская', :description => 'Борта с «леопардовыми пятнами» - выделяют ее среди всех пицц в мире!', :price => 549, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/neopolitan.jpeg'
  end
end
