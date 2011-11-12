require 'test_helper'

class WeightTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => WeightType.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    WeightType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    WeightType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to weight_type_url(assigns(:weight_type))
  end

  def test_edit
    get :edit, :id => WeightType.first
    assert_template 'edit'
  end

  def test_update_invalid
    WeightType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => WeightType.first
    assert_template 'edit'
  end

  def test_update_valid
    WeightType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => WeightType.first
    assert_redirected_to weight_type_url(assigns(:weight_type))
  end

  def test_destroy
    weight_type = WeightType.first
    delete :destroy, :id => weight_type
    assert_redirected_to weight_types_url
    assert !WeightType.exists?(weight_type.id)
  end
end
