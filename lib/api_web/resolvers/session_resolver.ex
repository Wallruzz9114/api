defmodule ApiWeb.Resolvers.SessionResolver do
  alias Api.{Accounts, Guardian}

  def login_user(_, %{input: input}, _) do
    # Check if user is in database
    # If yes, return a token and the user
    with {:ok, user} <- Accounts.Session.authenticate(input),
         {:ok, jwt_token, _} <- Guardian.encode_and_sign(user) do
      {:ok, %{token: jwt_token, user: user}}
    end
  end
end
