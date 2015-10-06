require 'test_helper'

class PersonalHistoriesControllerTest < ActionController::TestCase
  setup do
    @personal_history = personal_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_history" do
    assert_difference('PersonalHistory.count') do
      post :create, personal_history: { a: @personal_history.a, alergicos: @personal_history.alergicos, alergicos_description: @personal_history.alergicos_description, asociado_viajes_de_vuelo: @personal_history.asociado_viajes_de_vuelo, asociado_viajes_de_vuelo_description: @personal_history.asociado_viajes_de_vuelo_description, atep_laboral: @personal_history.atep_laboral, atep_laboral_description: @personal_history.atep_laboral_description, c: @personal_history.c, e: @personal_history.e, eco: @personal_history.eco, familiar: @personal_history.familiar, familiar_description: @personal_history.familiar_description, farmacologicos: @personal_history.farmacologicos, farmacologicos_description: @personal_history.farmacologicos_description, fum: @personal_history.fum, g: @personal_history.g, gestational_age: @personal_history.gestational_age, hospitables: @personal_history.hospitables, hospitables_description: @personal_history.hospitables_description, inmunologicos: @personal_history.inmunologicos, inmunologios_description: @personal_history.inmunologios_description, m: @personal_history.m, menstrual_cycle: @personal_history.menstrual_cycle, neunatales: @personal_history.neunatales, neunatales_description: @personal_history.neunatales_description, p: @personal_history.p, patologicos: @personal_history.patologicos, patologicos_description: @personal_history.patologicos_description, pregnancy: @personal_history.pregnancy, quirurgicos: @personal_history.quirurgicos, quirurgicos_description: @personal_history.quirurgicos_description, toxicos: @personal_history.toxicos, toxicos_description: @personal_history.toxicos_description, traumaticos: @personal_history.traumaticos, traumaticos_description: @personal_history.traumaticos_description, v: @personal_history.v }
    end

    assert_redirected_to personal_history_path(assigns(:personal_history))
  end

  test "should show personal_history" do
    get :show, id: @personal_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_history
    assert_response :success
  end

  test "should update personal_history" do
    patch :update, id: @personal_history, personal_history: { a: @personal_history.a, alergicos: @personal_history.alergicos, alergicos_description: @personal_history.alergicos_description, asociado_viajes_de_vuelo: @personal_history.asociado_viajes_de_vuelo, asociado_viajes_de_vuelo_description: @personal_history.asociado_viajes_de_vuelo_description, atep_laboral: @personal_history.atep_laboral, atep_laboral_description: @personal_history.atep_laboral_description, c: @personal_history.c, e: @personal_history.e, eco: @personal_history.eco, familiar: @personal_history.familiar, familiar_description: @personal_history.familiar_description, farmacologicos: @personal_history.farmacologicos, farmacologicos_description: @personal_history.farmacologicos_description, fum: @personal_history.fum, g: @personal_history.g, gestational_age: @personal_history.gestational_age, hospitables: @personal_history.hospitables, hospitables_description: @personal_history.hospitables_description, inmunologicos: @personal_history.inmunologicos, inmunologios_description: @personal_history.inmunologios_description, m: @personal_history.m, menstrual_cycle: @personal_history.menstrual_cycle, neunatales: @personal_history.neunatales, neunatales_description: @personal_history.neunatales_description, p: @personal_history.p, patologicos: @personal_history.patologicos, patologicos_description: @personal_history.patologicos_description, pregnancy: @personal_history.pregnancy, quirurgicos: @personal_history.quirurgicos, quirurgicos_description: @personal_history.quirurgicos_description, toxicos: @personal_history.toxicos, toxicos_description: @personal_history.toxicos_description, traumaticos: @personal_history.traumaticos, traumaticos_description: @personal_history.traumaticos_description, v: @personal_history.v }
    assert_redirected_to personal_history_path(assigns(:personal_history))
  end

  test "should destroy personal_history" do
    assert_difference('PersonalHistory.count', -1) do
      delete :destroy, id: @personal_history
    end

    assert_redirected_to personal_histories_path
  end
end
