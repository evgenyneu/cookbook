require 'test_helper'

class SearchTest < ActiveSupport::TestCase
  test 'return all recipes when cuisine and ingredient are nil' do
    result = Logic::Search.do_search(cuisine: nil, ingredient: nil)
    assert_equal %w(Name1 Name2), result.pluck(:name)
  end

  test 'return all recipes when cuisine and ingredient are empty' do
    result = Logic::Search.do_search(cuisine: '', ingredient: '')
    assert_equal %w(Name1 Name2), result.pluck(:name)
  end

  test 'search by cuisine' do
    result = Logic::Search.do_search(cuisine: 'Cuisine1', ingredient: nil)
    assert_equal ['Cuisine1'], result.pluck(:cuisine)
  end

  test 'search by cuisine inexact: empty response' do
    result = Logic::Search.do_search(cuisine: 'Cuisin', ingredient: nil)
    assert_empty result
  end

  test 'search by an ingredient' do
    result = Logic::Search.do_search(cuisine: nil, ingredient: 'Ingredient2')
    assert_equal 1, result.count
    assert_equal ['Ingredient2'], result[0].ingredients.pluck(:name)
  end

  test 'search by inexact ingredient: empty response' do
    result = Logic::Search.do_search(cuisine: nil, ingredient: 'Ingredie')
    assert_empty result
  end

  test 'search by both cuisine and an ingredient' do
    result = Logic::Search.do_search(cuisine: 'Cuisine2', ingredient: 'Ingredient2')
    assert_equal 1, result.count
    assert_equal 'Cuisine2', result[0].cuisine
    assert_equal ['Ingredient2'], result[0].ingredients.pluck(:name)
  end
end
