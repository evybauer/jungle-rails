require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

    # SETUP
    before :each do
      @category = Category.create! name: 'Apparel'

      10.times do |n|
        @category.products.create!(
          name: Faker::Hipster.sentence(3),
          description: Faker::Hipster.paragraph(4),
          image: open_asset('apparel1.jpg'),
          quantity: 10,
          price: 64.99
        )
    end
  end

  scenario "They see a product has been added to their cart" do
    visit root_path
    product = first('article.product')
    product.find("button", :text => /\AAdd\z/).click
    # DEBUG / VERIFY
    expect(page.has_content?('(1)'))
    page.save_screenshot
  end
end
