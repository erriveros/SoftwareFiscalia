require 'test_helper'

class CrimeVictimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crime_victim = crime_victims(:one)
  end

  test "should get index" do
    get crime_victims_url
    assert_response :success
  end

  test "should get new" do
    get new_crime_victim_url
    assert_response :success
  end

  test "should create crime_victim" do
    assert_difference('CrimeVictim.count') do
      post crime_victims_url, params: { crime_victim: {  } }
    end

    assert_redirected_to crime_victim_url(CrimeVictim.last)
  end

  test "should show crime_victim" do
    get crime_victim_url(@crime_victim)
    assert_response :success
  end

  test "should get edit" do
    get edit_crime_victim_url(@crime_victim)
    assert_response :success
  end

  test "should update crime_victim" do
    patch crime_victim_url(@crime_victim), params: { crime_victim: {  } }
    assert_redirected_to crime_victim_url(@crime_victim)
  end

  test "should destroy crime_victim" do
    assert_difference('CrimeVictim.count', -1) do
      delete crime_victim_url(@crime_victim)
    end

    assert_redirected_to crime_victims_url
  end
end
