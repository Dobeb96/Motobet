require 'test_helper'

class Moto3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moto3 = moto3s(:one)
  end

  test "should get index" do
    get moto3s_url
    assert_response :success
  end

  test "should get new" do
    get new_moto3_url
    assert_response :success
  end

  test "should create moto3" do
    assert_difference('Moto3.count') do
      post moto3s_url, params: { moto3: { chance: @moto3.chance, league: @moto3.league, main_page: @moto3.main_page, match_starts_at: @moto3.match_starts_at, odds: @moto3.odds, pick: @moto3.pick, status: @moto3.status, team_1: @moto3.team_1, team_2: @moto3.team_2 } }
    end

    assert_redirected_to moto3_url(Moto3.last)
  end

  test "should show moto3" do
    get moto3_url(@moto3)
    assert_response :success
  end

  test "should get edit" do
    get edit_moto3_url(@moto3)
    assert_response :success
  end

  test "should update moto3" do
    patch moto3_url(@moto3), params: { moto3: { chance: @moto3.chance, league: @moto3.league, main_page: @moto3.main_page, match_starts_at: @moto3.match_starts_at, odds: @moto3.odds, pick: @moto3.pick, status: @moto3.status, team_1: @moto3.team_1, team_2: @moto3.team_2 } }
    assert_redirected_to moto3_url(@moto3)
  end

  test "should destroy moto3" do
    assert_difference('Moto3.count', -1) do
      delete moto3_url(@moto3)
    end

    assert_redirected_to moto3s_url
  end
end
