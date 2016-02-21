require 'test_helper'

class SettleAgreesControllerTest < ActionController::TestCase
  setup do
    @settle_agree = settle_agrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:settle_agrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create settle_agree" do
    assert_difference('SettleAgree.count') do
      post :create, settle_agree: { case_type: @settle_agree.case_type, choice_of_law: @settle_agree.choice_of_law, confidential: @settle_agree.confidential, court: @settle_agree.court, defendant: @settle_agree.defendant, indemnity: @settle_agree.indemnity, notice_to: @settle_agree.notice_to, pay_date: @settle_agree.pay_date, plaintiff: @settle_agree.plaintiff, required: @settle_agree.required, settle_amount: @settle_agree.settle_amount, signature_block: @settle_agree.signature_block }
    end

    assert_redirected_to settle_agree_path(assigns(:settle_agree))
  end

  test "should show settle_agree" do
    get :show, id: @settle_agree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @settle_agree
    assert_response :success
  end

  test "should update settle_agree" do
    patch :update, id: @settle_agree, settle_agree: { case_type: @settle_agree.case_type, choice_of_law: @settle_agree.choice_of_law, confidential: @settle_agree.confidential, court: @settle_agree.court, defendant: @settle_agree.defendant, indemnity: @settle_agree.indemnity, notice_to: @settle_agree.notice_to, pay_date: @settle_agree.pay_date, plaintiff: @settle_agree.plaintiff, required: @settle_agree.required, settle_amount: @settle_agree.settle_amount, signature_block: @settle_agree.signature_block }
    assert_redirected_to settle_agree_path(assigns(:settle_agree))
  end

  test "should destroy settle_agree" do
    assert_difference('SettleAgree.count', -1) do
      delete :destroy, id: @settle_agree
    end

    assert_redirected_to settle_agrees_path
  end
end
