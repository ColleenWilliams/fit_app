require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "FIT INSTRUCTOR"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end
  #
  # test "should get home" do
  #   get static_pages_home_url
  #   assert_response :success
  #   assert_select "title", "Home | #{@base_title}"
  # end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get founders" do
    get static_pages_founders_url
    assert_response :success
    assert_select "title", "Founders | #{@base_title}"
  end

  test "should get demo" do
    get static_pages_demo_url
    assert_response :success
    assert_select "title", "Demo | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
