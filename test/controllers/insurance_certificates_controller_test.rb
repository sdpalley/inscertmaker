require 'test_helper'

class InsuranceCertificatesControllerTest < ActionController::TestCase
  setup do
    @insurance_certificate = insurance_certificates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insurance_certificates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insurance_certificate" do
    assert_difference('InsuranceCertificate.count') do
      post :create, insurance_certificate: { additional_insured: @insurance_certificate.additional_insured, aggregate_limit: @insurance_certificate.aggregate_limit, certificate_holder: @insurance_certificate.certificate_holder, form_number: @insurance_certificate.form_number, insuror: @insurance_certificate.insuror, named_insured: @insurance_certificate.named_insured, number_of_certificates_issued: @insurance_certificate.number_of_certificates_issued, occurrence_limit: @insurance_certificate.occurrence_limit, policy_end_date: @insurance_certificate.policy_end_date, policy_start_date: @insurance_certificate.policy_start_date }
    end

    assert_redirected_to insurance_certificate_path(assigns(:insurance_certificate))
  end

  test "should show insurance_certificate" do
    get :show, id: @insurance_certificate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insurance_certificate
    assert_response :success
  end

  test "should update insurance_certificate" do
    patch :update, id: @insurance_certificate, insurance_certificate: { additional_insured: @insurance_certificate.additional_insured, aggregate_limit: @insurance_certificate.aggregate_limit, certificate_holder: @insurance_certificate.certificate_holder, form_number: @insurance_certificate.form_number, insuror: @insurance_certificate.insuror, named_insured: @insurance_certificate.named_insured, number_of_certificates_issued: @insurance_certificate.number_of_certificates_issued, occurrence_limit: @insurance_certificate.occurrence_limit, policy_end_date: @insurance_certificate.policy_end_date, policy_start_date: @insurance_certificate.policy_start_date }
    assert_redirected_to insurance_certificate_path(assigns(:insurance_certificate))
  end

  test "should destroy insurance_certificate" do
    assert_difference('InsuranceCertificate.count', -1) do
      delete :destroy, id: @insurance_certificate
    end

    assert_redirected_to insurance_certificates_path
  end
end
