require 'test_helper'

class PacientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pacient = pacients(:one)
  end

  test "should get index" do
    get pacients_url, as: :json
    assert_response :success
  end

  test "should create pacient" do
    assert_difference('Pacient.count') do
      post pacients_url, params: { pacient: { din: @pacient.din, email: @pacient.email, lastname: @pacient.lastname, name: @pacient.name } }, as: :json
    end

    assert_response 201
  end

  test "should show pacient" do
    get pacient_url(@pacient), as: :json
    assert_response :success
  end

  test "should update pacient" do
    patch pacient_url(@pacient), params: { pacient: { din: @pacient.din, email: @pacient.email, lastname: @pacient.lastname, name: @pacient.name } }, as: :json
    assert_response 200
  end

  test "should destroy pacient" do
    assert_difference('Pacient.count', -1) do
      delete pacient_url(@pacient), as: :json
    end

    assert_response 204
  end
end
