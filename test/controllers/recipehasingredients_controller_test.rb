require 'test_helper'

class RecipehasingredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipehasingredient = recipehasingredients(:one)
  end

  test "should get index" do
    get recipehasingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_recipehasingredient_url
    assert_response :success
  end

  test "should create recipehasingredient" do
    assert_difference('Recipehasingredient.count') do
      post recipehasingredients_url, params: { recipehasingredient: { ingredient_id: @recipehasingredient.ingredient_id, recipe_id: @recipehasingredient.recipe_id } }
    end

    assert_redirected_to recipehasingredient_url(Recipehasingredient.last)
  end

  test "should show recipehasingredient" do
    get recipehasingredient_url(@recipehasingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipehasingredient_url(@recipehasingredient)
    assert_response :success
  end

  test "should update recipehasingredient" do
    patch recipehasingredient_url(@recipehasingredient), params: { recipehasingredient: { ingredient_id: @recipehasingredient.ingredient_id, recipe_id: @recipehasingredient.recipe_id } }
    assert_redirected_to recipehasingredient_url(@recipehasingredient)
  end

  test "should destroy recipehasingredient" do
    assert_difference('Recipehasingredient.count', -1) do
      delete recipehasingredient_url(@recipehasingredient)
    end

    assert_redirected_to recipehasingredients_url
  end
end
