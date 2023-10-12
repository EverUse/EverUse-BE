require 'google/apis/sheets_v4'
require 'googleauth'

class GoogleSheetsService
  def initialize(service_account_path)
    @service = Google::Apis::SheetsV4::SheetsService.new
    @service.authorization = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: File.open(service_account_path),
      scope: ['https://www.googleapis.com/auth/spreadsheets']
    )
  end

  def update_sheet(spreadsheet_id, range, values)
    request_body = Google::Apis::SheetsV4::ValueRange.new
    request_body.values = values

    @service.update_spreadsheet_value(spreadsheet_id, range, request_body, value_input_option: 'RAW')
  end
end