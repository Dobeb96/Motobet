require 'test_helper'

class MotogpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motogp = motogps(:one)
  end

  test "should get index" do
    get motogps_url
    assert_response :success
  end

  test "should get new" do
    get new_motogp_url
    assert_response :success
  end

  test "should create motogp" do
    assert_difference('Motogp.count') do
      post motogps_url, params: { motogp: { chance: @motogp.chance, league: @motogp.league, main_page: @motogp.main_page, match_starts_at: @motogp.match_starts_at, odds: @motogp.odds, pick: @motogp.pick, status: @motogp.status, team_1: @motogp.team_1, team_2: @motogp.team_2 } }
    end

    assert_redirected_to motogp_url(Motogp.last)
  end

  test "should show motogp" do
    get motogp_url(@motogp)
    assert_response :success
  end

  test "should get edit" do
    get edit_motogp_url(@motogp)
    assert_response :success
  end

  test "should update motogp" do
    patch motogp_url(@motogp), params: { motogp: { chance: @motogp.chance, league: @motogp.league, main_page: @motogp.main_page, match_starts_at: @motogp.match_starts_at, odds: @motogp.odds, pick: @motogp.pick, status: @motogp.status, team_1: @motogp.team_1, team_2: @motogp.team_2 } }
    assert_redirected_to motogp_url(@motogp)
  end

  test "should destroy motogp" do
    assert_difference('Motogp.count', -1) do
      delete motogp_url(@motogp)
    end

    assert_redirected_to motogps_url
  end
end
