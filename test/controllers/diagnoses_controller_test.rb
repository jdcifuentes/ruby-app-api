require 'test_helper'

class DiagnosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diagnosis = diagnoses(:one)
  end

  test "should get index" do
    get diagnoses_url, as: :json
    assert_response :success
  end

  test "should create diagnosis" do
    assert_difference('Diagnosis.count') do
      post diagnoses_url, params: { diagnosis: { description: @diagnosis.description, international_code: @diagnosis.international_code, name: @diagnosis.name } }, as: :json
    end

    assert_response 201
  end

  test "should show diagnosis" do
    get diagnosis_url(@diagnosis), as: :json
    assert_response :success
  end

  test "should update diagnosis" do
    patch diagnosis_url(@diagnosis), params: { diagnosis: { description: @diagnosis.description, international_code: @diagnosis.international_code, name: @diagnosis.name } }, as: :json
    assert_response 200
  end

  test "should destroy diagnosis" do
    assert_difference('Diagnosis.count', -1) do
      delete diagnosis_url(@diagnosis), as: :json
    end

    assert_response 204
  end
end
