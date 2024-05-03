require 'test_helper' #require incliuye en este archivo el codigo que este en test_helper
class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path #products_path es lo mismo que /products

        assert_response :success
        assert_select '.product', 2
    end

    test 'render a detail product page' do
        get product_path(products(:ps4))

        assert_response :success  #title, description y price son clases declaradas en show.html.erb
        assert_select '.title', 'PS4 Fat'
        assert_select '.description', 'PS4 en buen estado'
        assert_select '.price', '150$'
    end
end