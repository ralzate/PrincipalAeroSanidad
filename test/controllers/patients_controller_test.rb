require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { accompanist_name: @patient.accompanist_name, address: @patient.address, arl_id: @patient.arl_id, birthdate: @patient.birthdate, blood_type: @patient.blood_type, city_id: @patient.city_id, condition: @patient.condition, days_age: @patient.days_age, document: @patient.document, email: @patient.email, eps_id: @patient.eps_id, first_name: @patient.first_name, first_surname: @patient.first_surname, gender: @patient.gender, months_age: @patient.months_age, nacionality: @patient.nacionality, phone: @patient.phone, profession: @patient.profession, relationship: @patient.relationship, second_name: @patient.second_name, second_surname: @patient.second_surname, type_document: @patient.type_document, user_id: @patient.user_id, years_age: @patient.years_age }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { accompanist_name: @patient.accompanist_name, address: @patient.address, arl_id: @patient.arl_id, birthdate: @patient.birthdate, blood_type: @patient.blood_type, city_id: @patient.city_id, condition: @patient.condition, days_age: @patient.days_age, document: @patient.document, email: @patient.email, eps_id: @patient.eps_id, first_name: @patient.first_name, first_surname: @patient.first_surname, gender: @patient.gender, months_age: @patient.months_age, nacionality: @patient.nacionality, phone: @patient.phone, profession: @patient.profession, relationship: @patient.relationship, second_name: @patient.second_name, second_surname: @patient.second_surname, type_document: @patient.type_document, user_id: @patient.user_id, years_age: @patient.years_age }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
