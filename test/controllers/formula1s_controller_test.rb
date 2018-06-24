require 'test_helper'

class Formula1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formula1 = formula1s(:one)
  end

  test "should get index" do
    get formula1s_url
    assert_response :success
  end

  test "should get new" do
    get new_formula1_url
    assert_response :success
  end

  test "should create formula1" do
    assert_difference('Formula1.count') do
      post formula1s_url, params: { formula1: { chance: @formula1.chance, league: @formula1.league, main_page: @formula1.main_page, match_starts_at: @formula1.match_starts_at, odds: @formula1.odds, pick: @formula1.pick, status: @formula1.status, team_1: @formula1.team_1, team_2: @formula1.team_2 } }
    end

    assert_redirected_to formula1_url(Formula1.last)
  end

  test "should show formula1" do
    get formula1_url(@formula1)
    assert_response :success
  end

  test "should get edit" do
    get edit_formula1_url(@formula1)
    assert_response :success
  end

  test "should update formula1" do
    patch formula1_url(@formula1), params: { formula1: { chance: @formula1.chance, league: @formula1.league, main_page: @formula1.main_page, match_starts_at: @formula1.match_starts_at, odds: @formula1.odds, pick: @formula1.pick, status: @formula1.status, team_1: @formula1.team_1, team_2: @formula1.team_2 } }
    assert_redirected_to formula1_url(@formula1)
  end

  test "should destroy formula1" do
    assert_difference('Formula1.count', -1) do
      delete formula1_url(@formula1)
    end

    assert_redirected_to formula1s_url
  end
end
