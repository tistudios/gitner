require "application_system_test_case"

class BusinessEntitiesTest < ApplicationSystemTestCase
  setup do
    @business_entity = business_entities(:one)
  end

  test "visiting the index" do
    visit business_entities_url
    assert_selector "h1", text: "Business Entities"
  end

  test "creating a Business entity" do
    visit business_entities_url
    click_on "New Business Entity"

    fill_in "Founded", with: @business_entity.founded
    fill_in "Name", with: @business_entity.name
    fill_in "Title", with: @business_entity.title
    fill_in "Url", with: @business_entity.url
    click_on "Create Business entity"

    assert_text "Business entity was successfully created"
    click_on "Back"
  end

  test "updating a Business entity" do
    visit business_entities_url
    click_on "Edit", match: :first

    fill_in "Founded", with: @business_entity.founded
    fill_in "Name", with: @business_entity.name
    fill_in "Title", with: @business_entity.title
    fill_in "Url", with: @business_entity.url
    click_on "Update Business entity"

    assert_text "Business entity was successfully updated"
    click_on "Back"
  end

  test "destroying a Business entity" do
    visit business_entities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Business entity was successfully destroyed"
  end
end
