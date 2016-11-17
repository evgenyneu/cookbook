require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test 'should get index' do
    get search_url
    assert_response :success
  end

  test 'search by cuisine' do
    get search_url, params: { cuisine: 'Cuisine2' }
    assert_equal %w(Cuisine2), assigns(:recipes).pluck(:cuisine)
  end
end