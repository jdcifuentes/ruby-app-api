require 'test_helper'

class ClinicHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clinic_history = clinic_histories(:one)
  end

  test "should get index" do
    get clinic_histories_url, as: :json
    assert_response :success
  end

  test "should create clinic_history" do
    assert_difference('ClinicHistory.count') do
      post clinic_histories_url, params: { clinic_history: { age_paciente: @clinic_history.age_paciente, clinic_name: @clinic_history.clinic_name, diagnosis: @clinic_history.diagnosis, doctor_name: @clinic_history.doctor_name } }, as: :json
    end

    assert_response 201
  end

  test "should show clinic_history" do
    get clinic_history_url(@clinic_history), as: :json
    assert_response :success
  end

  test "should update clinic_history" do
    patch clinic_history_url(@clinic_history), params: { clinic_history: { age_paciente: @clinic_history.age_paciente, clinic_name: @clinic_history.clinic_name, diagnosis: @clinic_history.diagnosis, doctor_name: @clinic_history.doctor_name } }, as: :json
    assert_response 200
  end

  test "should destroy clinic_history" do
    assert_difference('ClinicHistory.count', -1) do
      delete clinic_history_url(@clinic_history), as: :json
    end

    assert_response 204
  end
end
