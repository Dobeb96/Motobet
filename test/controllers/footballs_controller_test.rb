require 'test_helper'

class FootballsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @football = footballs(:one)
  end

  test "should get index" do
    get footballs_url
    assert_response :success
  end

  test "should get new" do
    get new_football_url
    assert_response :success
  end

  test "should create football" do
    assert_difference('Football.count') do
      post footballs_url, params: { football: { chance: @football.chance, league: @football.league, main_page: @football.main_page, match_starts_at: @football.match_starts_at, odds: @football.odds, pick: @football.pick, status: @football.status, team_1: @football.team_1, team_2: @football.team_2 } }
    end

    assert_redirected_to football_url(Football.last)
  end

  test "should show football" do
    get football_url(@football)
    assert_response :success
  end

  test "should get edit" do
    get edit_football_url(@football)
    assert_response :success
  end

  test "should update football" do
    patch football_url(@football), params: { football: { chance: @football.chance, league: @football.league, main_page: @football.main_page, match_starts_at: @football.match_starts_at, odds: @football.odds, pick: @football.pick, status: @football.status, team_1: @football.team_1, team_2: @football.team_2 } }
    assert_redirected_to football_url(@football)
  end

  test "should destroy football" do
    assert_difference('Football.count', -1) do
      delete football_url(@football)
    end

    assert_redirected_to footballs_url
  end
end
