require 'test_helper'

class ClinicHistoriesControllerTest < ActionController::TestCase
  setup do
    @clinic_history = clinic_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_history" do
    assert_difference('ClinicHistory.count') do
      post :create, clinic_history: { accompanist_name: @clinic_history.accompanist_name, airport: @clinic_history.airport, city: @clinic_history.city, company: @clinic_history.company, cove: @clinic_history.cove, current_illness: @clinic_history.current_illness, department: @clinic_history.department, destination: @clinic_history.destination, mobiel_service: @clinic_history.mobiel_service, origin: @clinic_history.origin, patient_id: @clinic_history.patient_id, phone: @clinic_history.phone, reason_for_consultation: @clinic_history.reason_for_consultation, relationship: @clinic_history.relationship, type_service: @clinic_history.type_service, user_id: @clinic_history.user_id }
    end

    assert_redirected_to clinic_history_path(assigns(:clinic_history))
  end

  test "should show clinic_history" do
    get :show, id: @clinic_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_history
    assert_response :success
  end

  test "should update clinic_history" do
    patch :update, id: @clinic_history, clinic_history: { accompanist_name: @clinic_history.accompanist_name, airport: @clinic_history.airport, city: @clinic_history.city, company: @clinic_history.company, cove: @clinic_history.cove, current_illness: @clinic_history.current_illness, department: @clinic_history.department, destination: @clinic_history.destination, mobiel_service: @clinic_history.mobiel_service, origin: @clinic_history.origin, patient_id: @clinic_history.patient_id, phone: @clinic_history.phone, reason_for_consultation: @clinic_history.reason_for_consultation, relationship: @clinic_history.relationship, type_service: @clinic_history.type_service, user_id: @clinic_history.user_id }
    assert_redirected_to clinic_history_path(assigns(:clinic_history))
  end

  test "should destroy clinic_history" do
    assert_difference('ClinicHistory.count', -1) do
      delete :destroy, id: @clinic_history
    end

    assert_redirected_to clinic_histories_path
  end
end
