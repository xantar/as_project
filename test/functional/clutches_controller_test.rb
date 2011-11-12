require 'test_helper'

class ClutchesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Clutch.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Clutch.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Clutch.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to clutch_url(assigns(:clutch))
  end

  def test_edit
    get :edit, :id => Clutch.first
    assert_template 'edit'
  end

  def test_update_invalid
    Clutch.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Clutch.first
    assert_template 'edit'
  end

  def test_update_valid
    Clutch.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Clutch.first
    assert_redirected_to clutch_url(assigns(:clutch))
  end

  def test_destroy
    clutch = Clutch.first
    delete :destroy, :id => clutch
    assert_redirected_to clutches_url
    assert !Clutch.exists?(clutch.id)
  end
end
