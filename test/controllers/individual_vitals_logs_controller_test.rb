require 'test_helper'

class IndividualVitalsLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @individual_vitals_log = individual_vitals_logs(:one)
  end

  test "should get index" do
    get individual_vitals_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_individual_vitals_log_url
    assert_response :success
  end

  test "should create individual_vitals_log" do
    assert_difference('IndividualVitalsLog.count') do
      post individual_vitals_logs_url, params: { individual_vitals_log: { bloodpressure: @individual_vitals_log.bloodpressure, individual_id: @individual_vitals_log.individual_id, pulse: @individual_vitals_log.pulse, temperature: @individual_vitals_log.temperature } }
    end

    assert_redirected_to individual_vitals_log_url(IndividualVitalsLog.last)
  end

  test "should show individual_vitals_log" do
    get individual_vitals_log_url(@individual_vitals_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_individual_vitals_log_url(@individual_vitals_log)
    assert_response :success
  end

  test "should update individual_vitals_log" do
    patch individual_vitals_log_url(@individual_vitals_log), params: { individual_vitals_log: { bloodpressure: @individual_vitals_log.bloodpressure, individual_id: @individual_vitals_log.individual_id, pulse: @individual_vitals_log.pulse, temperature: @individual_vitals_log.temperature } }
    assert_redirected_to individual_vitals_log_url(@individual_vitals_log)
  end

  test "should destroy individual_vitals_log" do
    assert_difference('IndividualVitalsLog.count', -1) do
      delete individual_vitals_log_url(@individual_vitals_log)
    end

    assert_redirected_to individual_vitals_logs_url
  end
end
