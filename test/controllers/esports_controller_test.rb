require 'test_helper'

class EsportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @esport = esports(:one)
  end

  test "should get index" do
    get esports_url
    assert_response :success
  end

  test "should get new" do
    get new_esport_url
    assert_response :success
  end

  test "should create esport" do
    assert_difference('Esport.count') do
      post esports_url, params: { esport: { chance: @esport.chance, league: @esport.league, main_page: @esport.main_page, match_starts_at: @esport.match_starts_at, odds: @esport.odds, pick: @esport.pick, status: @esport.status, team_1: @esport.team_1, team_2: @esport.team_2 } }
    end

    assert_redirected_to esport_url(Esport.last)
  end

  test "should show esport" do
    get esport_url(@esport)
    assert_response :success
  end

  test "should get edit" do
    get edit_esport_url(@esport)
    assert_response :success
  end

  test "should update esport" do
    patch esport_url(@esport), params: { esport: { chance: @esport.chance, league: @esport.league, main_page: @esport.main_page, match_starts_at: @esport.match_starts_at, odds: @esport.odds, pick: @esport.pick, status: @esport.status, team_1: @esport.team_1, team_2: @esport.team_2 } }
    assert_redirected_to esport_url(@esport)
  end

  test "should destroy esport" do
    assert_difference('Esport.count', -1) do
      delete esport_url(@esport)
    end

    assert_redirected_to esports_url
  end
end
