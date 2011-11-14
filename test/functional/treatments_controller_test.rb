require 'test_helper'

class TreatmentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Treatment.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Treatment.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Treatment.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to treatment_url(assigns(:treatment))
  end

  def test_edit
    get :edit, :id => Treatment.first
    assert_template 'edit'
  end

  def test_update_invalid
    Treatment.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Treatment.first
    assert_template 'edit'
  end

  def test_update_valid
    Treatment.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Treatment.first
    assert_redirected_to treatment_url(assigns(:treatment))
  end

  def test_destroy
    treatment = Treatment.first
    delete :destroy, :id => treatment
    assert_redirected_to treatments_url
    assert !Treatment.exists?(treatment.id)
  end
end
