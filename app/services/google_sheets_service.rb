require 'google/apis/sheets_v4'
require 'googleauth'

class GoogleSheetsService
  def initialize
    @service = Google::Apis::SheetsV4::SheetsService.new

    @service.authorization = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: StringIO.new(credentials),
      scope: 'https://www.googleapis.com/auth/spreadsheets'
    )
  end

  def update_sheet(spreadsheet_id, range, values)
    request_body = Google::Apis::SheetsV4::ValueRange.new
    request_body.values = values

    @service.append_spreadsheet_value(spreadsheet_id, range, request_body, value_input_option: 'RAW')
  end

  private

  def credentials
    @credentials ||= {
        type: "service_account",
        project_id: "everuse",
        private_key_id: Figaro.env.google_private_id_key,
        private_key: Figaro.env.google_private_key,
        client_email: Figaro.env.google_client_email,
        client_id: Figaro.env.google_client_id,
        auth_uri: "https://accounts.google.com/o/oauth2/auth",
        token_uri: "https://oauth2.googleapis.com/token",
        auth_provider_x509_cert_url: "https://www.googleapis.com/oauth2/v1/certs",
        client_x509_cert_url: Figaro.env.google_client_cert_url,
        universe_domain: "googleapis.com"
      }.to_json
  end
end