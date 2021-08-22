## committee-example

This Sinatra app was created to illustrate how [committee](https://github.com/interagent/committee) fails to validate responses with HTTP status code that is not documented in the OpenAPI spec.

One can run this example by running `bundle` followed by `ruby app.rb`.

The root endpoint will respond with the status code provided in the `status` query param. For example, when the server receives the request `http://127.0.0.1:4567?status=200`, it will respond with status `200`.

The OpenAPI file in `docs/schema.json` specifies that the root path responds with only status `200`.

The expected behavior of committee would be to raise an exception if the endpoint responds with a status code different from `200`, but that doesn't happen.