require 'test_helper'

class Moto2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moto2 = moto2s(:one)
  end

  test "should get index" do
    get moto2s_url
    assert_response :success
  end

  test "should get new" do
    get new_moto2_url
    assert_response :success
  end

  test "should create moto2" do
    assert_difference('Moto2.count') do
      post moto2s_url, params: { moto2: { chance: @moto2.chance, league: @moto2.league, main_page: @moto2.main_page, match_starts_at: @moto2.match_starts_at, odds: @moto2.odds, pick: @moto2.pick, status: @moto2.status, team_1: @moto2.team_1, team_2: @moto2.team_2 } }
    end

    assert_redirected_to moto2_url(Moto2.last)
  end

  test "should show moto2" do
    get moto2_url(@moto2)
    assert_response :success
  end

  test "should get edit" do
    get edit_moto2_url(@moto2)
    assert_response :success
  end

  test "should update moto2" do
    patch moto2_url(@moto2), params: { moto2: { chance: @moto2.chance, league: @moto2.league, main_page: @moto2.main_page, match_starts_at: @moto2.match_starts_at, odds: @moto2.odds, pick: @moto2.pick, status: @moto2.status, team_1: @moto2.team_1, team_2: @moto2.team_2 } }
    assert_redirected_to moto2_url(@moto2)
  end

  test "should destroy moto2" do
    assert_difference('Moto2.count', -1) do
      delete moto2_url(@moto2)
    end

    assert_redirected_to moto2s_url
  end
end
