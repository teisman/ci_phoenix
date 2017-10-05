defmodule CiPhoenix.Account.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias CiPhoenix.Account.User


  schema "users" do
    field :email, :string
    field :encrypted_password, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :encrypted_password])
    |> validate_required([:email, :encrypted_password])
  end
end
