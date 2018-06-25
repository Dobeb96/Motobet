require 'test_helper'

class MotoGPsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moto_gp = moto_gps(:one)
  end

  test "should get index" do
    get moto_gps_url
    assert_response :success
  end

  test "should get new" do
    get new_moto_gp_url
    assert_response :success
  end

  test "should create moto_gp" do
    assert_difference('MotoGp.count') do
      post moto_gps_url, params: { moto_gp: { chance: @moto_gp.chance, league: @moto_gp.league, main_page: @moto_gp.main_page, match_starts_at: @moto_gp.match_starts_at, odds: @moto_gp.odds, pick: @moto_gp.pick, status: @moto_gp.status, team_1: @moto_gp.team_1, team_2: @moto_gp.team_2 } }
    end

    assert_redirected_to moto_gp_url(MotoGp.last)
  end

  test "should show moto_gp" do
    get moto_gp_url(@moto_gp)
    assert_response :success
  end

  test "should get edit" do
    get edit_moto_gp_url(@moto_gp)
    assert_response :success
  end

  test "should update moto_gp" do
    patch moto_gp_url(@moto_gp), params: { moto_gp: { chance: @moto_gp.chance, league: @moto_gp.league, main_page: @moto_gp.main_page, match_starts_at: @moto_gp.match_starts_at, odds: @moto_gp.odds, pick: @moto_gp.pick, status: @moto_gp.status, team_1: @moto_gp.team_1, team_2: @moto_gp.team_2 } }
    assert_redirected_to moto_gp_url(@moto_gp)
  end

  test "should destroy moto_gp" do
    assert_difference('MotoGp.count', -1) do
      delete moto_gp_url(@moto_gp)
    end

    assert_redirected_to moto_gps_url
  end
end
