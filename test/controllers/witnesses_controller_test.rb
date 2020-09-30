require 'test_helper'

class WitnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @witness = witnesses(:one)
  end

  test "should get index" do
    get witnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_witness_url
    assert_response :success
  end

  test "should create witness" do
    assert_difference('Witness.count') do
      post witnesses_url, params: { witness: { age: @witness.age, detalle: @witness.detalle, name: @witness.name, rut: @witness.rut } }
    end

    assert_redirected_to witness_url(Witness.last)
  end

  test "should show witness" do
    get witness_url(@witness)
    assert_response :success
  end

  test "should get edit" do
    get edit_witness_url(@witness)
    assert_response :success
  end

  test "should update witness" do
    patch witness_url(@witness), params: { witness: { age: @witness.age, detalle: @witness.detalle, name: @witness.name, rut: @witness.rut } }
    assert_redirected_to witness_url(@witness)
  end

  test "should destroy witness" do
    assert_difference('Witness.count', -1) do
      delete witness_url(@witness)
    end

    assert_redirected_to witnesses_url
  end
end
