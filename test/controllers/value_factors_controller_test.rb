require "test_helper"

class ValueFactorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @value_factor = value_factors(:one)
  end

  test "should get index" do
    get value_factors_url
    assert_response :success
  end

  test "should get new" do
    get new_value_factor_url
    assert_response :success
  end

  test "should create value_factor" do
    assert_difference("ValueFactor.count") do
      post value_factors_url, params: { value_factor: { criteria: @value_factor.criteria, description: @value_factor.description, name: @value_factor.name } }
    end

    assert_redirected_to value_factor_url(ValueFactor.last)
  end

  test "should show value_factor" do
    get value_factor_url(@value_factor)
    assert_response :success
  end

  test "should get edit" do
    get edit_value_factor_url(@value_factor)
    assert_response :success
  end

  test "should update value_factor" do
    patch value_factor_url(@value_factor), params: { value_factor: { criteria: @value_factor.criteria, description: @value_factor.description, name: @value_factor.name } }
    assert_redirected_to value_factor_url(@value_factor)
  end

  test "should destroy value_factor" do
    assert_difference("ValueFactor.count", -1) do
      delete value_factor_url(@value_factor)
    end

    assert_redirected_to value_factors_url
  end
end
