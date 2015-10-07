require 'test_helper'

class PhysicalExamsControllerTest < ActionController::TestCase
  setup do
    @physical_exam = physical_exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physical_exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physical_exam" do
    assert_difference('PhysicalExam.count') do
      post :create, physical_exam: { abdomen: @physical_exam.abdomen, abdomen_description: @physical_exam.abdomen_description, alteration: @physical_exam.alteration, breathing_frequency: @physical_exam.breathing_frequency, extremities: @physical_exam.extremities, extremities_description: @physical_exam.extremities_description, eye_opening: @physical_exam.eye_opening, genitourinary: @physical_exam.genitourinary, genitourinary_description: @physical_exam.genitourinary_description, glucose: @physical_exam.glucose, head: @physical_exam.head, head_description: @physical_exam.head_description, heart: @physical_exam.heart, heart_description: @physical_exam.heart_description, heart_rate: @physical_exam.heart_rate, height_in_centimeters: @physical_exam.height_in_centimeters, in: @physical_exam.in, kilograms: @physical_exam.kilograms, lungs: @physical_exam.lungs, lungs_description: @physical_exam.lungs_description, measurement: @physical_exam.measurement, mental: @physical_exam.mental, mental_description: @physical_exam.mental_description, motor_response: @physical_exam.motor_response, neck: @physical_exam.neck, neck_description: @physical_exam.neck_description, neurological: @physical_exam.neurological, neurological_description: @physical_exam.neurological_description, other_signs: @physical_exam.other_signs, rectum: @physical_exam.rectum, rectum_description: @physical_exam.rectum_description, rib_cage: @physical_exam.rib_cage, rib_cage_description: @physical_exam.rib_cage_description, sat_of_o_ambiente: @physical_exam.sat_of_o_ambiente, sat_of_o_supplementary: @physical_exam.sat_of_o_supplementary, sense_organ: @physical_exam.sense_organ, sense_organ_description: @physical_exam.sense_organ_description, skeletal_muscle: @physical_exam.skeletal_muscle, skeletal_muscle_description: @physical_exam.skeletal_muscle_description, skin_and_appendages: @physical_exam.skin_and_appendages, skin_and_appendages_description: @physical_exam.skin_and_appendages_description, ta_mmgh: @physical_exam.ta_mmgh, temperature: @physical_exam.temperature, verbal_answer: @physical_exam.verbal_answer, weight: @physical_exam.weight }
    end

    assert_redirected_to physical_exam_path(assigns(:physical_exam))
  end

  test "should show physical_exam" do
    get :show, id: @physical_exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physical_exam
    assert_response :success
  end

  test "should update physical_exam" do
    patch :update, id: @physical_exam, physical_exam: { abdomen: @physical_exam.abdomen, abdomen_description: @physical_exam.abdomen_description, alteration: @physical_exam.alteration, breathing_frequency: @physical_exam.breathing_frequency, extremities: @physical_exam.extremities, extremities_description: @physical_exam.extremities_description, eye_opening: @physical_exam.eye_opening, genitourinary: @physical_exam.genitourinary, genitourinary_description: @physical_exam.genitourinary_description, glucose: @physical_exam.glucose, head: @physical_exam.head, head_description: @physical_exam.head_description, heart: @physical_exam.heart, heart_description: @physical_exam.heart_description, heart_rate: @physical_exam.heart_rate, height_in_centimeters: @physical_exam.height_in_centimeters, in: @physical_exam.in, kilograms: @physical_exam.kilograms, lungs: @physical_exam.lungs, lungs_description: @physical_exam.lungs_description, measurement: @physical_exam.measurement, mental: @physical_exam.mental, mental_description: @physical_exam.mental_description, motor_response: @physical_exam.motor_response, neck: @physical_exam.neck, neck_description: @physical_exam.neck_description, neurological: @physical_exam.neurological, neurological_description: @physical_exam.neurological_description, other_signs: @physical_exam.other_signs, rectum: @physical_exam.rectum, rectum_description: @physical_exam.rectum_description, rib_cage: @physical_exam.rib_cage, rib_cage_description: @physical_exam.rib_cage_description, sat_of_o_ambiente: @physical_exam.sat_of_o_ambiente, sat_of_o_supplementary: @physical_exam.sat_of_o_supplementary, sense_organ: @physical_exam.sense_organ, sense_organ_description: @physical_exam.sense_organ_description, skeletal_muscle: @physical_exam.skeletal_muscle, skeletal_muscle_description: @physical_exam.skeletal_muscle_description, skin_and_appendages: @physical_exam.skin_and_appendages, skin_and_appendages_description: @physical_exam.skin_and_appendages_description, ta_mmgh: @physical_exam.ta_mmgh, temperature: @physical_exam.temperature, verbal_answer: @physical_exam.verbal_answer, weight: @physical_exam.weight }
    assert_redirected_to physical_exam_path(assigns(:physical_exam))
  end

  test "should destroy physical_exam" do
    assert_difference('PhysicalExam.count', -1) do
      delete :destroy, id: @physical_exam
    end

    assert_redirected_to physical_exams_path
  end
end
