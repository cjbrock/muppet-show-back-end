require 'test_helper'

class MuppetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @muppet = muppets(:one)
  end

  test "should get index" do
    get muppets_url, as: :json
    assert_response :success
  end

  test "should create muppet" do
    assert_difference('Muppet.count') do
      post muppets_url, params: { muppet: { fur_color: @muppet.fur_color, image: @muppet.image, name: @muppet.name, partner: @muppet.partner, personality: @muppet.personality, show_id: @muppet.show_id } }, as: :json
    end

    assert_response 201
  end

  test "should show muppet" do
    get muppet_url(@muppet), as: :json
    assert_response :success
  end

  test "should update muppet" do
    patch muppet_url(@muppet), params: { muppet: { fur_color: @muppet.fur_color, image: @muppet.image, name: @muppet.name, partner: @muppet.partner, personality: @muppet.personality, show_id: @muppet.show_id } }, as: :json
    assert_response 200
  end

  test "should destroy muppet" do
    assert_difference('Muppet.count', -1) do
      delete muppet_url(@muppet), as: :json
    end

    assert_response 204
  end
end
