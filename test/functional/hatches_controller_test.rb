require 'test_helper'

class HatchesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Hatch.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Hatch.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Hatch.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to hatch_url(assigns(:hatch))
  end

  def test_edit
    get :edit, :id => Hatch.first
    assert_template 'edit'
  end

  def test_update_invalid
    Hatch.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Hatch.first
    assert_template 'edit'
  end

  def test_update_valid
    Hatch.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Hatch.first
    assert_redirected_to hatch_url(assigns(:hatch))
  end

  def test_destroy
    hatch = Hatch.first
    delete :destroy, :id => hatch
    assert_redirected_to hatches_url
    assert !Hatch.exists?(hatch.id)
  end
end
