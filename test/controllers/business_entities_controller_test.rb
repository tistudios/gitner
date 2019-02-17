require 'test_helper'

class BusinessEntitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_entity = business_entities(:one)
  end

  test "should get index" do
    get business_entities_url
    assert_response :success
  end

  test "should get new" do
    get new_business_entity_url
    assert_response :success
  end

  test "should create business_entity" do
    assert_difference('BusinessEntity.count') do
      post business_entities_url, params: { business_entity: { founded: @business_entity.founded, name: @business_entity.name, title: @business_entity.title, url: @business_entity.url } }
    end

    assert_redirected_to business_entity_url(BusinessEntity.last)
  end

  test "should show business_entity" do
    get business_entity_url(@business_entity)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_entity_url(@business_entity)
    assert_response :success
  end

  test "should update business_entity" do
    patch business_entity_url(@business_entity), params: { business_entity: { founded: @business_entity.founded, name: @business_entity.name, title: @business_entity.title, url: @business_entity.url } }
    assert_redirected_to business_entity_url(@business_entity)
  end

  test "should destroy business_entity" do
    assert_difference('BusinessEntity.count', -1) do
      delete business_entity_url(@business_entity)
    end

    assert_redirected_to business_entities_url
  end
end
