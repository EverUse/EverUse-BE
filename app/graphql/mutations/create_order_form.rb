module Mutations
  class CreateOrderForm < BaseMutation
    argument :customer, String, required: true
    argument :email, String, required: true
    argument :comment, String, required: false
    argument :total, Float, required: true
    argument :products, [Types::ProductInputType], required: true

    field :message, String, null: false

    def resolve(customer:, email:, comment:, total:, products:)
      order_form = OrderForm.new(
        customer: customer,
        email: email,
        comment: comment,
        total: total,
        products: products.to_json
      )
      order_form.save

      OrderFormMailer.confirmation_email(customer, email, comment, total, products).deliver_now

      send_data_to_google_sheets(order_form)

      { message: "Hello #{customer}, your order submission was successful! An order request confirmation will be sent to #{email} shortly. If you don't receive that email please reach out to us at contact@everuseproducts.com"}
    end

    private

    def send_data_to_google_sheets(order_form)
      service = GoogleSheetsService.new

      products_array = JSON.parse(order_form.products)
      products_string = products_array.map do |product|
        product.map { |key, value| "#{key.capitalize}: #{value}" }.join(", ")
      end.join(" | ")

      format_date = order_form.created_at.strftime("%Y-%m-%d")

      values = [
        [format_date, order_form.customer, order_form.email, order_form.comment, order_form.total, products_string]
      ]

      range = 'Sheet1!A2'
      spreadsheet_id = ENV["spreadsheet_key"]

      service.update_sheet(spreadsheet_id, range, values)
    end
  end
end