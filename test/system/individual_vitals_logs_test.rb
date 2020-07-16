require "application_system_test_case"

class IndividualVitalsLogsTest < ApplicationSystemTestCase
  setup do
    @individual_vitals_log = individual_vitals_logs(:one)
  end

  test "visiting the index" do
    visit individual_vitals_logs_url
    assert_selector "h1", text: "Individual Vitals Logs"
  end

  test "creating a Individual vitals log" do
    visit individual_vitals_logs_url
    click_on "New Individual Vitals Log"

    fill_in "Bloodpressure", with: @individual_vitals_log.bloodpressure
    fill_in "Individual", with: @individual_vitals_log.individual_id
    fill_in "Pulse", with: @individual_vitals_log.pulse
    fill_in "Temperature", with: @individual_vitals_log.temperature
    click_on "Create Individual vitals log"

    assert_text "Individual vitals log was successfully created"
    click_on "Back"
  end

  test "updating a Individual vitals log" do
    visit individual_vitals_logs_url
    click_on "Edit", match: :first

    fill_in "Bloodpressure", with: @individual_vitals_log.bloodpressure
    fill_in "Individual", with: @individual_vitals_log.individual_id
    fill_in "Pulse", with: @individual_vitals_log.pulse
    fill_in "Temperature", with: @individual_vitals_log.temperature
    click_on "Update Individual vitals log"

    assert_text "Individual vitals log was successfully updated"
    click_on "Back"
  end

  test "destroying a Individual vitals log" do
    visit individual_vitals_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Individual vitals log was successfully destroyed"
  end
end
