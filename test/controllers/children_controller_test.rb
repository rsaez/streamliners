require 'test_helper'

class ChildrenControllerTest < ActionController::TestCase
  setup do
    @child = children(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:children)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child" do
    assert_difference('Child.count') do
      post :create, child: { DOB: @child.DOB, address: @child.address, age: @child.age, allergies: @child.allergies, allergies_info: @child.allergies_info, gender: @child.gender, immunization_review: @child.immunization_review, name: @child.name, no_parent_present: @child.no_parent_present, parental_permission_given: @child.parental_permission_given, relevant_information: @child.relevant_information, school: @child.school }
    end

    assert_redirected_to child_path(assigns(:child))
  end

  test "should show child" do
    get :show, id: @child
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child
    assert_response :success
  end

  test "should update child" do
    patch :update, id: @child, child: { DOB: @child.DOB, address: @child.address, age: @child.age, allergies: @child.allergies, allergies_info: @child.allergies_info, gender: @child.gender, immunization_review: @child.immunization_review, name: @child.name, no_parent_present: @child.no_parent_present, parental_permission_given: @child.parental_permission_given, relevant_information: @child.relevant_information, school: @child.school }
    assert_redirected_to child_path(assigns(:child))
  end

  test "should destroy child" do
    assert_difference('Child.count', -1) do
      delete :destroy, id: @child
    end

    assert_redirected_to children_path
  end
end
