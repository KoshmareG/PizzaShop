class AddProducts < ActiveRecord::Migration[7.0]
  def change
    Product.create :title => 'Карбонара', :description => 'Классика - всегда удачный выбор!', :price => 739, :size => 28, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/carbonara.jpg'

    Product.create :title => 'Маргарита', :description => 'Истинным ценителям аутентичной итальянской кухни мы предлагаем заказать пиццу «Маргарита».', :price => 529, :size => 28, :is_spicy => false, :is_veg => true, :is_best_offer => true, :path_to_image => '/images/margarita.jpg'

    Product.create :title => 'Пепперони', :description => 'Отличительной чертой пиццы «Пепперони» является ее остро-жгучий вкус.', :price => 619, :size => 40, :is_spicy => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/pepperoni.jpg'

    Product.create :title => 'Вегетарианская', :description => 'Ни одно животное не пострадало!', :price => 559, :size => 30, :is_spicy => false, :is_veg => true, :is_best_offer => false, :path_to_image => '/images/vegetarian.jpeg'
  end
end
