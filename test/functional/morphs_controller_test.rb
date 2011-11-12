require 'test_helper'

class MorphsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Morph.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Morph.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Morph.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to morph_url(assigns(:morph))
  end

  def test_edit
    get :edit, :id => Morph.first
    assert_template 'edit'
  end

  def test_update_invalid
    Morph.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Morph.first
    assert_template 'edit'
  end

  def test_update_valid
    Morph.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Morph.first
    assert_redirected_to morph_url(assigns(:morph))
  end

  def test_destroy
    morph = Morph.first
    delete :destroy, :id => morph
    assert_redirected_to morphs_url
    assert !Morph.exists?(morph.id)
  end
end
