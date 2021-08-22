# frozen_string_literal: true

require 'committee'
require 'sinatra'

use(
  Committee::Middleware::ResponseValidation,
  schema_path: 'docs/schema.json',
  raise: true
)

get '/' do
  status params[:status]
end
