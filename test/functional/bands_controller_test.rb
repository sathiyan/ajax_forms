require 'test_helper'

class BandsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Band.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Band.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Band.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to band_url(assigns(:band))
  end

  def test_edit
    get :edit, :id => Band.first
    assert_template 'edit'
  end

  def test_update_invalid
    Band.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Band.first
    assert_template 'edit'
  end

  def test_update_valid
    Band.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Band.first
    assert_redirected_to band_url(assigns(:band))
  end

  def test_destroy
    band = Band.first
    delete :destroy, :id => band
    assert_redirected_to bands_url
    assert !Band.exists?(band.id)
  end
end
