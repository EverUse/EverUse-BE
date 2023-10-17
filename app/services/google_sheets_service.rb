require 'google/apis/sheets_v4'
require 'googleauth'

class GoogleSheetsService
  def initialize
    auth_credentials = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: StringIO.new(credentials),
      scope: 'https://www.googleapis.com/auth/spreadsheets'
    )

    @service = Google::Apis::SheetsV4::SheetsService.new

    @service.authorization = auth_credentials
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
        private_key_id: ENV["google_private_id_key"] || Figaro.env.google_private_id_key,
        # private_key: "-----BEGIN PRIVATE KEY-----\\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC36EZ8JnJGJyqV\\nDIKLdwZkdDDLat5ncVsOBctnlSncZJ6JFvvePE8eSah+Kr4p4JDYcy/k7q1MT7i1\\n/g67U/fR1qUgjiSvfNdTDdMBHL6BmtclTxTKdU+TBUSn1OIm3SicEVWyJ1CuEPRo\\nuhtoSqQ5EVUwYDt2NzQMKEmM3rJxJdiwWND2eOqcqNNrBlje4Ga+mL/bCOngFJ6m\\n3DwJ9OnHUaud7C4+FJmkJ58gtfxMAM52gj7vSRuei+Ms0eMHcKR6mtqBFhMj6MJJ\\nKyyLvE4wETgBpBTD8BZf+I+GlZAwSC/Wta5cZVsguuqXZw2DMLPyH0fO7naq4VwH\\nJUJ+hB4rAgMBAAECggEAAVxhVSSrgYhjevWB4CeAjGFK0SRYiFRsuWIoaWPD3E6Y\\nqkV8Z4zoD1XQ1fXOMRFpSyi9Ok7E6/kjl9BwDTJcATwvbIh5dr+EbUrcfImTO34x\\nsXV7qsQK03jpAeum8mVPvR4XLNa4RkC9xkGGS/CtdQ4ajVHcnVNIP9Bq3i99UVxg\\nCYZ/x8lUA7MJAY9ahmjT4CyjqVF4o04dHPbGB+KbRMn3NYF7laNUe08JHhRUYGum\\nmGe1h2AS1ROPPjGKKdqlppJO44OmcMvbpK7IMYQc0IkK3tsRLu2/od6OMN8AYGvN\\nFFaJyfAyK37jOAK6ltkTwIf2f7m4plRQ35G5ZqDT9QKBgQD98gYcBqrb+10laTC4\\n4MHTMMmwPKIti04FEOpIqllruJXFIrNiSwzlfwuKnntx9TIhAw1q/jiY1AMG6Ydt\\nKUqZPYl4zNLt6io3R0mQzWRP8J/TYCS+7b25dggYn895WpRWXtYqniT45jO3/6G0\\nvHyi/dzEw9wtGSuDX99N33d8lQKBgQC5ZS/4CxPd9ERruz52Dg7IAWI2JxnznPaP\\ng9Eg7XzjzXDGGn5n4B6ONT/AUofyWCL2diap9Ew4YFGl2meRzkSie2dsf+KdRos5\\n4jMcp2lDRk8VEev2gfyz1SH7V+Ek/Axdp2R/oOPTq65W/6XWQI6Ov9ydRBxVx57l\\ndIt77v+/vwKBgQCPtcd/VMacd0PfSAgqmAcYXSPGeInO/GbKtyfet4ijTXJ0fY7G\\nsXI67gq6B7YUZ45W4ENXqUaeNl0ALGhXfmaZEhoaIs+7lCkP32fialm6Y5IPLPme\\nkywrKICsbsQbCQepWUIaHCUQNjZOinwYrBJcqw2kzLJtUzEsx7S3fR9BgQKBgQCY\\nIiu53MVBxpd63B1GXQTOJSyFiZKnMS+21xF+dsOcX9JiDg2aifQo+BNHa7I5MRAH\\ntS7HGjyNqqR1eAKzSFNUDfXxuAOq0d+f8TnGEq6zUPfGL321PDe1DnmjOhr78YTo\\nOVujy9AIu4IFzCU26qTRCSotN14VGgkO+5MWcSoXGwKBgQDsmf96SggNKP1Mv+ne\\ngKp1GhYo60hVBgrSrhL7q/k2cH4ed57ds68PIDX64ptsjy4d3iwWv776pYe0UU0j\\neKx3PPzj8tqxJmG7bEfuDRftNrMMNFFGy9frWdhTaDuwe1hb8WVY0ImEs3jyt5qH\\n7244IwswkhYC2Gor2WgvEY2MBg==\\n-----END PRIVATE KEY-----\\n",
        private_key: ENV["google_private_key"] || Figaro.env.google_private_key,
        client_email: ENV["google_client_email"] || Figaro.env.google_client_email,
        client_id: ENV["google_client_id"] || Figaro.env.google_client_id,
        auth_uri: "https://accounts.google.com/o/oauth2/auth",
        token_uri: "https://oauth2.googleapis.com/token",
        auth_provider_x509_cert_url: "https://www.googleapis.com/oauth2/v1/certs",
        client_x509_cert_url: ENV["google_client_cert_url"] || Figaro.env.google_client_cert_url,
        universe_domain: "googleapis.com"
      }.to_json
  end
end