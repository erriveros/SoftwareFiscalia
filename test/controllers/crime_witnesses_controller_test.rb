require 'test_helper'

class CrimeWitnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crime_witness = crime_witnesses(:one)
  end

  test "should get index" do
    get crime_witnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_crime_witness_url
    assert_response :success
  end

  test "should create crime_witness" do
    assert_difference('CrimeWitness.count') do
      post crime_witnesses_url, params: { crime_witness: {  } }
    end

    assert_redirected_to crime_witness_url(CrimeWitness.last)
  end

  test "should show crime_witness" do
    get crime_witness_url(@crime_witness)
    assert_response :success
  end

  test "should get edit" do
    get edit_crime_witness_url(@crime_witness)
    assert_response :success
  end

  test "should update crime_witness" do
    patch crime_witness_url(@crime_witness), params: { crime_witness: {  } }
    assert_redirected_to crime_witness_url(@crime_witness)
  end

  test "should destroy crime_witness" do
    assert_difference('CrimeWitness.count', -1) do
      delete crime_witness_url(@crime_witness)
    end

    assert_redirected_to crime_witnesses_url
  end
end
