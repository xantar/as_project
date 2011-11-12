require 'test_helper'

class DragonsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Dragon.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Dragon.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Dragon.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to dragon_url(assigns(:dragon))
  end

  def test_edit
    get :edit, :id => Dragon.first
    assert_template 'edit'
  end

  def test_update_invalid
    Dragon.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Dragon.first
    assert_template 'edit'
  end

  def test_update_valid
    Dragon.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Dragon.first
    assert_redirected_to dragon_url(assigns(:dragon))
  end

  def test_destroy
    dragon = Dragon.first
    delete :destroy, :id => dragon
    assert_redirected_to dragons_url
    assert !Dragon.exists?(dragon.id)
  end
end
