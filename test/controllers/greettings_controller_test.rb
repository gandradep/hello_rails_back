require 'test_helper'

class GreettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @greetting = greettings(:one)
  end

  test 'should get index' do
    get greettings_url, as: :json
    assert_response :success
  end

  test 'should create greetting' do
    assert_difference('Greetting.count') do
      post greettings_url, params: { greetting: { text: @greetting.text } }, as: :json
    end

    assert_response :created
  end

  test 'should show greetting' do
    get greetting_url(@greetting), as: :json
    assert_response :success
  end

  test 'should update greetting' do
    patch greetting_url(@greetting), params: { greetting: { text: @greetting.text } }, as: :json
    assert_response :success
  end

  test 'should destroy greetting' do
    assert_difference('Greetting.count', -1) do
      delete greetting_url(@greetting), as: :json
    end

    assert_response :no_content
  end
end
