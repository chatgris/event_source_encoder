defmodule EventSourceEncoder do
  @moduledoc """
  This module serialize a given id, data, and event to a EventSource message.
  """

  @doc """
  Encode an id and data to an EventSource message.

  * `id`    - The event ID to set the EventSource object's last event ID value to.
  * `data`  - The data field for the message.
  * `event` - The event's type.

  ## Examples

      iex> EventSourceEncoder.encode(1, "This is data")
      "id:1\\ndata: This is data\\n\\n"

      iex> EventSourceEncoder.encode(1, "This is new data", :login)
      "id:1\\nevent:login\\ndata: This is new data\\n\\n"
  """
  def encode(id, data) do
    "id:#{id}\ndata: #{data}\n\n"
  end

  def encode(id, data, event) do
    "id:#{id}\nevent:#{event}\ndata: #{data}\n\n"
  end
end
