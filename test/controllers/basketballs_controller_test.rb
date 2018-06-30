require 'test_helper'

class BasketballsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basketball = basketballs(:one)
  end

  test "should get index" do
    get basketballs_url
    assert_response :success
  end

  test "should get new" do
    get new_basketball_url
    assert_response :success
  end

  test "should create basketball" do
    assert_difference('Basketball.count') do
      post basketballs_url, params: { basketball: { chance: @basketball.chance, league: @basketball.league, main_page: @basketball.main_page, match_starts_at: @basketball.match_starts_at, odds: @basketball.odds, pick: @basketball.pick, status: @basketball.status, team_1: @basketball.team_1, team_2: @basketball.team_2 } }
    end

    assert_redirected_to basketball_url(Basketball.last)
  end

  test "should show basketball" do
    get basketball_url(@basketball)
    assert_response :success
  end

  test "should get edit" do
    get edit_basketball_url(@basketball)
    assert_response :success
  end

  test "should update basketball" do
    patch basketball_url(@basketball), params: { basketball: { chance: @basketball.chance, league: @basketball.league, main_page: @basketball.main_page, match_starts_at: @basketball.match_starts_at, odds: @basketball.odds, pick: @basketball.pick, status: @basketball.status, team_1: @basketball.team_1, team_2: @basketball.team_2 } }
    assert_redirected_to basketball_url(@basketball)
  end

  test "should destroy basketball" do
    assert_difference('Basketball.count', -1) do
      delete basketball_url(@basketball)
    end

    assert_redirected_to basketballs_url
  end
end
