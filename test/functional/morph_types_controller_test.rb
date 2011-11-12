require 'test_helper'

class MorphTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => MorphType.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    MorphType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    MorphType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to morph_type_url(assigns(:morph_type))
  end

  def test_edit
    get :edit, :id => MorphType.first
    assert_template 'edit'
  end

  def test_update_invalid
    MorphType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MorphType.first
    assert_template 'edit'
  end

  def test_update_valid
    MorphType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MorphType.first
    assert_redirected_to morph_type_url(assigns(:morph_type))
  end

  def test_destroy
    morph_type = MorphType.first
    delete :destroy, :id => morph_type
    assert_redirected_to morph_types_url
    assert !MorphType.exists?(morph_type.id)
  end
end
