defmodule Noted.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:telegram_data, :map)
    field(:telegram_id, :integer)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:telegram_id, :telegram_data])
    |> validate_required([:telegram_id, :telegram_data])
  end
end
