defmodule ApiWeb.Schema.Types do
  use Absinthe.Schema.Notation
  alias ApiWeb.Schema.Types

  import_types(Types.UserType)
  import_types(Types.SessionType)
end
