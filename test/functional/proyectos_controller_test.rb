require 'test_helper'

class ProyectosControllerTest < ActionController::TestCase
  setup do
    @proyecto = proyectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proyecto" do
    assert_difference('Proyecto.count') do
      post :create, proyecto: { des_corta: @proyecto.des_corta, descripcion: @proyecto.descripcion, imagen: @proyecto.imagen, nombre: @proyecto.nombre, string: @proyecto.string, url: @proyecto.url }
    end

    assert_redirected_to proyecto_path(assigns(:proyecto))
  end

  test "should show proyecto" do
    get :show, id: @proyecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proyecto
    assert_response :success
  end

  test "should update proyecto" do
    put :update, id: @proyecto, proyecto: { des_corta: @proyecto.des_corta, descripcion: @proyecto.descripcion, imagen: @proyecto.imagen, nombre: @proyecto.nombre, string: @proyecto.string, url: @proyecto.url }
    assert_redirected_to proyecto_path(assigns(:proyecto))
  end

  test "should destroy proyecto" do
    assert_difference('Proyecto.count', -1) do
      delete :destroy, id: @proyecto
    end

    assert_redirected_to proyectos_path
  end
end
