require 'test_helper'

class SystemReviewsControllerTest < ActionController::TestCase
  setup do
    @system_review = system_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_review" do
    assert_difference('SystemReview.count') do
      post :create, system_review: { abdominal: @system_review.abdominal, abdominal_description: @system_review.abdominal_description, cardiovascular: @system_review.cardiovascular, cardiovascular_description: @system_review.cardiovascular_description, genito_urinario: @system_review.genito_urinario, genito_urinario_description: @system_review.genito_urinario_description, mental: @system_review.mental, mental_description: @system_review.mental_description, neurological: @system_review.neurological, neurological_description: @system_review.neurological_description, respiratory: @system_review.respiratory, sense_organ: @system_review.sense_organ, sense_organ_description: @system_review.sense_organ_description, skeletal_muscle: @system_review.skeletal_muscle, skeletal_muscle_description: @system_review.skeletal_muscle_description, skin_and_appendages: @system_review.skin_and_appendages, skin_and_appendages_description: @system_review.skin_and_appendages_description }
    end

    assert_redirected_to system_review_path(assigns(:system_review))
  end

  test "should show system_review" do
    get :show, id: @system_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_review
    assert_response :success
  end

  test "should update system_review" do
    patch :update, id: @system_review, system_review: { abdominal: @system_review.abdominal, abdominal_description: @system_review.abdominal_description, cardiovascular: @system_review.cardiovascular, cardiovascular_description: @system_review.cardiovascular_description, genito_urinario: @system_review.genito_urinario, genito_urinario_description: @system_review.genito_urinario_description, mental: @system_review.mental, mental_description: @system_review.mental_description, neurological: @system_review.neurological, neurological_description: @system_review.neurological_description, respiratory: @system_review.respiratory, sense_organ: @system_review.sense_organ, sense_organ_description: @system_review.sense_organ_description, skeletal_muscle: @system_review.skeletal_muscle, skeletal_muscle_description: @system_review.skeletal_muscle_description, skin_and_appendages: @system_review.skin_and_appendages, skin_and_appendages_description: @system_review.skin_and_appendages_description }
    assert_redirected_to system_review_path(assigns(:system_review))
  end

  test "should destroy system_review" do
    assert_difference('SystemReview.count', -1) do
      delete :destroy, id: @system_review
    end

    assert_redirected_to system_reviews_path
  end
end
