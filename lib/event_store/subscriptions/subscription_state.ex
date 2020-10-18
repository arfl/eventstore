defmodule EventStore.Subscriptions.SubscriptionState do
  @moduledoc false

  defstruct [
    :conn,
    :event_store,
    :serializer,
    :schema,
    :stream_uuid,
    :start_from,
    :subscription_name,
    :subscription_id,
    :selector,
    :mapper,
    :max_size,
    :partition_by,
    :lock_ref,
    last_received: 0,
    last_sent: 0,
    last_ack: 0,
    queue_size: 0,
    buffer_size: 1,
    subscribers: %{},
    partitions: %{},
    processed_event_numbers: MapSet.new()
  ]
end
