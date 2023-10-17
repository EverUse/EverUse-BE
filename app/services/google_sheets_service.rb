require 'google/apis/sheets_v4'
require 'googleauth'
require 'base64'

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
    @env_var =  Base64.decode64("LS0tLS1CRUdJTiBQUklWQVRFIEtFWS0tLS0tCk1JSUV2d0lCQURBTkJna3Foa2lHOXcwQkFRRUZBQVNDQktrd2dnU2xBZ0VBQW9JQkFRQzM2RVo4Sm5KR0p5cVYKRElLTGR3WmtkRERMYXQ1bmNWc09CY3RubFNuY1pKNkpGdnZlUEU4ZVNhaCtLcjRwNEpEWWN5L2s3cTFNVDdpMQovZzY3VS9mUjFxVWdqaVN2Zk5kVERkTUJITDZCbXRjbFR4VEtkVStUQlVTbjFPSW0zU2ljRVZXeUoxQ3VFUFJvCnVodG9TcVE1RVZVd1lEdDJOelFNS0VtTTNySnhKZGl3V05EMmVPcWNxTk5yQmxqZTRHYSttTC9iQ09uZ0ZKNm0KM0R3SjlPbkhVYXVkN0M0K0ZKbWtKNThndGZ4TUFNNTJnajd2U1J1ZWkrTXMwZU1IY0tSNm10cUJGaE1qNk1KSgpLeXlMdkU0d0VUZ0JwQlREOEJaZitJK0dsWkF3U0MvV3RhNWNaVnNndXVxWFp3MkRNTFB5SDBmTzduYXE0VndICkpVSitoQjRyQWdNQkFBRUNnZ0VBQVZ4aFZTU3JnWWhqZXZXQjRDZUFqR0ZLMFNSWWlGUnN1V0lvYVdQRDNFNlkKcWtWOFo0em9EMVhRMWZYT01SRnBTeWk5T2s3RTYva2psOUJ3RFRKY0FUd3ZiSWg1ZHIrRWJVcmNmSW1UTzM0eApzWFY3cXNRSzAzanBBZXVtOG1WUHZSNFhMTmE0UmtDOXhrR0dTL0N0ZFE0YWpWSGNuVk5JUDlCcTNpOTlVVnhnCkNZWi94OGxVQTdNSkFZOWFobWpUNEN5anFWRjRvMDRkSFBiR0IrS2JSTW4zTllGN2xhTlVlMDhKSGhSVVlHdW0KbUdlMWgyQVMxUk9QUGpHS0tkcWxwcEpPNDRPbWNNdmJwSzdJTVlRYzBJa0szdHNSTHUyL29kNk9NTjhBWUd2TgpGRmFKeWZBeUszN2pPQUs2bHRrVHdJZjJmN200cGxSUTM1RzVacURUOVFLQmdRRDk4Z1ljQnFyYisxMGxhVEM0CjRNSFRNTW13UEtJdGkwNEZFT3BJcWxscnVKWEZJck5pU3d6bGZ3dUtubnR4OVRJaEF3MXEvamlZMUFNRzZZZHQKS1VxWlBZbDR6Tkx0NmlvM1IwbVF6V1JQOEovVFlDUys3YjI1ZGdnWW44OTVXcFJXWHRZcW5pVDQ1ak8zLzZHMAp2SHlpL2R6RXc5d3RHU3VEWDk5TjMzZDhsUUtCZ1FDNVpTLzRDeFBkOUVScnV6NTJEZzdJQVdJMkp4bnpuUGFQCmc5RWc3WHpqelhER0duNW40QjZPTlQvQVVvZnlXQ0wyZGlhcDlFdzRZRkdsMm1lUnprU2llMmRzZitLZFJvczUKNGpNY3AybERSazhWRWV2MmdmeXoxU0g3VitFay9BeGRwMlIvb09QVHE2NVcvNlhXUUk2T3Y5eWRSQnhWeDU3bApkSXQ3N3YrL3Z3S0JnUUNQdGNkL1ZNYWNkMFBmU0FncW1BY1lYU1BHZUluTy9HYkt0eWZldDRpalRYSjBmWTdHCnNYSTY3Z3E2QjdZVVo0NVc0RU5YcVVhZU5sMEFMR2hYZm1hWkVob2FJcys3bENrUDMyZmlhbG02WTVJUExQbWUKa3l3cktJQ3Nic1FiQ1FlcFdVSWFIQ1VRTmpaT2lud1lyQkpjcXcya3pMSnRVekVzeDdTM2ZSOUJnUUtCZ1FDWQpJaXU1M01WQnhwZDYzQjFHWFFUT0pTeUZpWktuTVMrMjF4Ritkc09jWDlKaURnMmFpZlFvK0JOSGE3STVNUkFICnRTN0hHanlOcXFSMWVBS3pTRk5VRGZYeHVBT3EwZCtmOFRuR0VxNnpVUGZHTDMyMVBEZTFEbm1qT2hyNzhZVG8KT1Z1ank5QUl1NElGekNVMjZxVFJDU290TjE0Vkdna08rNU1XY1NvWEd3S0JnUURzbWY5NlNnZ05LUDFNdituZQpnS3AxR2hZbzYwaFZCZ3JTcmhMN3EvazJjSDRlZDU3ZHM2OFBJRFg2NHB0c2p5NGQzaXdXdjc3NnBZZTBVVTBqCmVLeDNQUHpqOHRxeEptRzdiRWZ1RFJmdE5yTU1ORkZHeTlmcldkaFRhRHV3ZTFoYjhXVlkwSW1FczNqeXQ1cUgKNzI0NEl3c3draFlDMkdvcjJXZ3ZFWTJNQmc9PQotLS0tLUVORCBQUklWQVRFIEtFWS0tLS0tCg==")
    @env_var2 = Base64.decode64(Figaro.env.google_private_key)
    # binding.pry
    @credentials ||= {
        type: "service_account",
        project_id: "everuse",
        private_key_id: ENV["google_private_id_key"] || Figaro.env.google_private_id_key,
        # private_key: "-----BEGIN PRIVATE KEY----- MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC36EZ8JnJGJyqV DIKLdwZkdDDLat5ncVsOBctnlSncZJ6JFvvePE8eSah+Kr4p4JDYcy/k7q1MT7i1 /g67U/fR1qUgjiSvfNdTDdMBHL6BmtclTxTKdU+TBUSn1OIm3SicEVWyJ1CuEPRo uhtoSqQ5EVUwYDt2NzQMKEmM3rJxJdiwWND2eOqcqNNrBlje4Ga+mL/bCOngFJ6m 3DwJ9OnHUaud7C4+FJmkJ58gtfxMAM52gj7vSRuei+Ms0eMHcKR6mtqBFhMj6MJJ KyyLvE4wETgBpBTD8BZf+I+GlZAwSC/Wta5cZVsguuqXZw2DMLPyH0fO7naq4VwH JUJ+hB4rAgMBAAECggEAAVxhVSSrgYhjevWB4CeAjGFK0SRYiFRsuWIoaWPD3E6Y qkV8Z4zoD1XQ1fXOMRFpSyi9Ok7E6/kjl9BwDTJcATwvbIh5dr+EbUrcfImTO34x sXV7qsQK03jpAeum8mVPvR4XLNa4RkC9xkGGS/CtdQ4ajVHcnVNIP9Bq3i99UVxg CYZ/x8lUA7MJAY9ahmjT4CyjqVF4o04dHPbGB+KbRMn3NYF7laNUe08JHhRUYGum mGe1h2AS1ROPPjGKKdqlppJO44OmcMvbpK7IMYQc0IkK3tsRLu2/od6OMN8AYGvN FFaJyfAyK37jOAK6ltkTwIf2f7m4plRQ35G5ZqDT9QKBgQD98gYcBqrb+10laTC4 4MHTMMmwPKIti04FEOpIqllruJXFIrNiSwzlfwuKnntx9TIhAw1q/jiY1AMG6Ydt KUqZPYl4zNLt6io3R0mQzWRP8J/TYCS+7b25dggYn895WpRWXtYqniT45jO3/6G0 vHyi/dzEw9wtGSuDX99N33d8lQKBgQC5ZS/4CxPd9ERruz52Dg7IAWI2JxnznPaP g9Eg7XzjzXDGGn5n4B6ONT/AUofyWCL2diap9Ew4YFGl2meRzkSie2dsf+KdRos5 4jMcp2lDRk8VEev2gfyz1SH7V+Ek/Axdp2R/oOPTq65W/6XWQI6Ov9ydRBxVx57l dIt77v+/vwKBgQCPtcd/VMacd0PfSAgqmAcYXSPGeInO/GbKtyfet4ijTXJ0fY7G sXI67gq6B7YUZ45W4ENXqUaeNl0ALGhXfmaZEhoaIs+7lCkP32fialm6Y5IPLPme kywrKICsbsQbCQepWUIaHCUQNjZOinwYrBJcqw2kzLJtUzEsx7S3fR9BgQKBgQCY Iiu53MVBxpd63B1GXQTOJSyFiZKnMS+21xF+dsOcX9JiDg2aifQo+BNHa7I5MRAH tS7HGjyNqqR1eAKzSFNUDfXxuAOq0d+f8TnGEq6zUPfGL321PDe1DnmjOhr78YTo OVujy9AIu4IFzCU26qTRCSotN14VGgkO+5MWcSoXGwKBgQDsmf96SggNKP1Mv+ne gKp1GhYo60hVBgrSrhL7q/k2cH4ed57ds68PIDX64ptsjy4d3iwWv776pYe0UU0j eKx3PPzj8tqxJmG7bEfuDRftNrMMNFFGy9frWdhTaDuwe1hb8WVY0ImEs3jyt5qH 7244IwswkhYC2Gor2WgvEY2MBg== -----END PRIVATE KEY----- ",
        # private_key: Figaro.env.google_private_key || @env_var,
        private_key: @env_var2 || @env_var,
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