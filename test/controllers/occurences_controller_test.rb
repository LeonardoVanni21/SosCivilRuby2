require 'test_helper'

class OccurencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @occurence = occurences(:one)
  end

  test "should get index" do
    get occurences_url
    assert_response :success
  end

  test "should get new" do
    get new_occurence_url
    assert_response :success
  end

  test "should create occurence" do
    assert_difference('Occurence.count') do
      post occurences_url, params: { occurence: { deliveryDate: @occurence.deliveryDate, idRequest: @occurence.idRequest, status: @occurence.status } }
    end

    assert_redirected_to occurence_url(Occurence.last)
  end

  test "should show occurence" do
    get occurence_url(@occurence)
    assert_response :success
  end

  test "should get edit" do
    get edit_occurence_url(@occurence)
    assert_response :success
  end

  test "should update occurence" do
    patch occurence_url(@occurence), params: { occurence: { deliveryDate: @occurence.deliveryDate, idRequest: @occurence.idRequest, status: @occurence.status } }
    assert_redirected_to occurence_url(@occurence)
  end

  test "should destroy occurence" do
    assert_difference('Occurence.count', -1) do
      delete occurence_url(@occurence)
    end

    assert_redirected_to occurences_url
  end
end
