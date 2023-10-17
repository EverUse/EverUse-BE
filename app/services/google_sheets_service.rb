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
        # private_key: "-----BEGIN PRIVATE KEY----- MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC36EZ8JnJGJyqV DIKLdwZkdDDLat5ncVsOBctnlSncZJ6JFvvePE8eSah+Kr4p4JDYcy/k7q1MT7i1 /g67U/fR1qUgjiSvfNdTDdMBHL6BmtclTxTKdU+TBUSn1OIm3SicEVWyJ1CuEPRo uhtoSqQ5EVUwYDt2NzQMKEmM3rJxJdiwWND2eOqcqNNrBlje4Ga+mL/bCOngFJ6m 3DwJ9OnHUaud7C4+FJmkJ58gtfxMAM52gj7vSRuei+Ms0eMHcKR6mtqBFhMj6MJJ KyyLvE4wETgBpBTD8BZf+I+GlZAwSC/Wta5cZVsguuqXZw2DMLPyH0fO7naq4VwH JUJ+hB4rAgMBAAECggEAAVxhVSSrgYhjevWB4CeAjGFK0SRYiFRsuWIoaWPD3E6Y qkV8Z4zoD1XQ1fXOMRFpSyi9Ok7E6/kjl9BwDTJcATwvbIh5dr+EbUrcfImTO34x sXV7qsQK03jpAeum8mVPvR4XLNa4RkC9xkGGS/CtdQ4ajVHcnVNIP9Bq3i99UVxg CYZ/x8lUA7MJAY9ahmjT4CyjqVF4o04dHPbGB+KbRMn3NYF7laNUe08JHhRUYGum mGe1h2AS1ROPPjGKKdqlppJO44OmcMvbpK7IMYQc0IkK3tsRLu2/od6OMN8AYGvN FFaJyfAyK37jOAK6ltkTwIf2f7m4plRQ35G5ZqDT9QKBgQD98gYcBqrb+10laTC4 4MHTMMmwPKIti04FEOpIqllruJXFIrNiSwzlfwuKnntx9TIhAw1q/jiY1AMG6Ydt KUqZPYl4zNLt6io3R0mQzWRP8J/TYCS+7b25dggYn895WpRWXtYqniT45jO3/6G0 vHyi/dzEw9wtGSuDX99N33d8lQKBgQC5ZS/4CxPd9ERruz52Dg7IAWI2JxnznPaP g9Eg7XzjzXDGGn5n4B6ONT/AUofyWCL2diap9Ew4YFGl2meRzkSie2dsf+KdRos5 4jMcp2lDRk8VEev2gfyz1SH7V+Ek/Axdp2R/oOPTq65W/6XWQI6Ov9ydRBxVx57l dIt77v+/vwKBgQCPtcd/VMacd0PfSAgqmAcYXSPGeInO/GbKtyfet4ijTXJ0fY7G sXI67gq6B7YUZ45W4ENXqUaeNl0ALGhXfmaZEhoaIs+7lCkP32fialm6Y5IPLPme kywrKICsbsQbCQepWUIaHCUQNjZOinwYrBJcqw2kzLJtUzEsx7S3fR9BgQKBgQCY Iiu53MVBxpd63B1GXQTOJSyFiZKnMS+21xF+dsOcX9JiDg2aifQo+BNHa7I5MRAH tS7HGjyNqqR1eAKzSFNUDfXxuAOq0d+f8TnGEq6zUPfGL321PDe1DnmjOhr78YTo OVujy9AIu4IFzCU26qTRCSotN14VGgkO+5MWcSoXGwKBgQDsmf96SggNKP1Mv+ne gKp1GhYo60hVBgrSrhL7q/k2cH4ed57ds68PIDX64ptsjy4d3iwWv776pYe0UU0j eKx3PPzj8tqxJmG7bEfuDRftNrMMNFFGy9frWdhTaDuwe1hb8WVY0ImEs3jyt5qH 7244IwswkhYC2Gor2WgvEY2MBg== -----END PRIVATE KEY----- ",
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