require 'test_helper'

class CrimeFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crime_file = crime_files(:one)
  end

  test "should get index" do
    get crime_files_url
    assert_response :success
  end

  test "should get new" do
    get new_crime_file_url
    assert_response :success
  end

  test "should create crime_file" do
    assert_difference('CrimeFile.count') do
      post crime_files_url, params: { crime_file: {  } }
    end

    assert_redirected_to crime_file_url(CrimeFile.last)
  end

  test "should show crime_file" do
    get crime_file_url(@crime_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_crime_file_url(@crime_file)
    assert_response :success
  end

  test "should update crime_file" do
    patch crime_file_url(@crime_file), params: { crime_file: {  } }
    assert_redirected_to crime_file_url(@crime_file)
  end

  test "should destroy crime_file" do
    assert_difference('CrimeFile.count', -1) do
      delete crime_file_url(@crime_file)
    end

    assert_redirected_to crime_files_url
  end
end
