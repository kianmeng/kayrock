defmodule(Kayrock.JoinGroup) do
  @moduledoc false
  _ = " THIS CODE IS GENERATED BY KAYROCK"

  defmodule(V0.Request) do
    @moduledoc false
    _ = " THIS CODE IS GENERATED BY KAYROCK"

    defstruct(
      group_id: nil,
      session_timeout: nil,
      member_id: nil,
      protocol_type: nil,
      group_protocols: [],
      correlation_id: nil,
      client_id: nil
    )

    import(Elixir.Kayrock.Serialize)
    @type t :: %__MODULE__{}
    def(api_key) do
      :kpro_schema.api_key(:join_group)
    end

    def(api_vsn) do
      0
    end

    def(response_deserializer) do
      &V0.Response.deserialize/1
    end

    def(schema) do
      [
        group_id: :string,
        session_timeout: :int32,
        member_id: :string,
        protocol_type: :string,
        group_protocols: {:array, [protocol_name: :string, protocol_metadata: :bytes]}
      ]
    end

    def(serialize(%V0.Request{} = struct)) do
      [
        <<api_key()::16, api_vsn()::16, struct.correlation_id()::32,
          byte_size(struct.client_id())::16, struct.client_id()::binary>>,
        [
          serialize(:string, Map.get(struct, :group_id)),
          serialize(:int32, Map.get(struct, :session_timeout)),
          serialize(:string, Map.get(struct, :member_id)),
          serialize(:string, Map.get(struct, :protocol_type)),
          case(Map.get(struct, :group_protocols)) do
            [] ->
              <<-1::32-signed>>

            vals when is_list(vals) ->
              [
                <<length(vals)::32-signed>>,
                for(v <- vals) do
                  [
                    serialize(:string, Map.get(v, :protocol_name)),
                    serialize(:bytes, Map.get(v, :protocol_metadata))
                  ]
                end
              ]
          end
        ]
      ]
    end
  end

  defimpl(Elixir.Kayrock.Request, for: V0.Request) do
    def(serialize(%V0.Request{} = struct)) do
      V0.Request.serialize(struct)
    end

    def(api_vsn(%V0.Request{})) do
      V0.Request.api_vsn()
    end

    def(response_deserializer(%V0.Request{})) do
      V0.Request.response_deserializer()
    end
  end

  defmodule(V1.Request) do
    @moduledoc false
    _ = " THIS CODE IS GENERATED BY KAYROCK"

    defstruct(
      group_id: nil,
      session_timeout: nil,
      rebalance_timeout: nil,
      member_id: nil,
      protocol_type: nil,
      group_protocols: [],
      correlation_id: nil,
      client_id: nil
    )

    import(Elixir.Kayrock.Serialize)
    @type t :: %__MODULE__{}
    def(api_key) do
      :kpro_schema.api_key(:join_group)
    end

    def(api_vsn) do
      1
    end

    def(response_deserializer) do
      &V1.Response.deserialize/1
    end

    def(schema) do
      [
        group_id: :string,
        session_timeout: :int32,
        rebalance_timeout: :int32,
        member_id: :string,
        protocol_type: :string,
        group_protocols: {:array, [protocol_name: :string, protocol_metadata: :bytes]}
      ]
    end

    def(serialize(%V1.Request{} = struct)) do
      [
        <<api_key()::16, api_vsn()::16, struct.correlation_id()::32,
          byte_size(struct.client_id())::16, struct.client_id()::binary>>,
        [
          serialize(:string, Map.get(struct, :group_id)),
          serialize(:int32, Map.get(struct, :session_timeout)),
          serialize(:int32, Map.get(struct, :rebalance_timeout)),
          serialize(:string, Map.get(struct, :member_id)),
          serialize(:string, Map.get(struct, :protocol_type)),
          case(Map.get(struct, :group_protocols)) do
            [] ->
              <<-1::32-signed>>

            vals when is_list(vals) ->
              [
                <<length(vals)::32-signed>>,
                for(v <- vals) do
                  [
                    serialize(:string, Map.get(v, :protocol_name)),
                    serialize(:bytes, Map.get(v, :protocol_metadata))
                  ]
                end
              ]
          end
        ]
      ]
    end
  end

  defimpl(Elixir.Kayrock.Request, for: V1.Request) do
    def(serialize(%V1.Request{} = struct)) do
      V1.Request.serialize(struct)
    end

    def(api_vsn(%V1.Request{})) do
      V1.Request.api_vsn()
    end

    def(response_deserializer(%V1.Request{})) do
      V1.Request.response_deserializer()
    end
  end

  defmodule(V2.Request) do
    @moduledoc false
    _ = " THIS CODE IS GENERATED BY KAYROCK"

    defstruct(
      group_id: nil,
      session_timeout: nil,
      rebalance_timeout: nil,
      member_id: nil,
      protocol_type: nil,
      group_protocols: [],
      correlation_id: nil,
      client_id: nil
    )

    import(Elixir.Kayrock.Serialize)
    @type t :: %__MODULE__{}
    def(api_key) do
      :kpro_schema.api_key(:join_group)
    end

    def(api_vsn) do
      2
    end

    def(response_deserializer) do
      &V2.Response.deserialize/1
    end

    def(schema) do
      [
        group_id: :string,
        session_timeout: :int32,
        rebalance_timeout: :int32,
        member_id: :string,
        protocol_type: :string,
        group_protocols: {:array, [protocol_name: :string, protocol_metadata: :bytes]}
      ]
    end

    def(serialize(%V2.Request{} = struct)) do
      [
        <<api_key()::16, api_vsn()::16, struct.correlation_id()::32,
          byte_size(struct.client_id())::16, struct.client_id()::binary>>,
        [
          serialize(:string, Map.get(struct, :group_id)),
          serialize(:int32, Map.get(struct, :session_timeout)),
          serialize(:int32, Map.get(struct, :rebalance_timeout)),
          serialize(:string, Map.get(struct, :member_id)),
          serialize(:string, Map.get(struct, :protocol_type)),
          case(Map.get(struct, :group_protocols)) do
            [] ->
              <<-1::32-signed>>

            vals when is_list(vals) ->
              [
                <<length(vals)::32-signed>>,
                for(v <- vals) do
                  [
                    serialize(:string, Map.get(v, :protocol_name)),
                    serialize(:bytes, Map.get(v, :protocol_metadata))
                  ]
                end
              ]
          end
        ]
      ]
    end
  end

  defimpl(Elixir.Kayrock.Request, for: V2.Request) do
    def(serialize(%V2.Request{} = struct)) do
      V2.Request.serialize(struct)
    end

    def(api_vsn(%V2.Request{})) do
      V2.Request.api_vsn()
    end

    def(response_deserializer(%V2.Request{})) do
      V2.Request.response_deserializer()
    end
  end

  def(get_request_struct(0)) do
    %V0.Request{}
  end

  def(get_request_struct(1)) do
    %V1.Request{}
  end

  def(get_request_struct(2)) do
    %V2.Request{}
  end

  defmodule(V0.Response) do
    @moduledoc false
    _ = " THIS CODE IS GENERATED BY KAYROCK"

    defstruct(
      error_code: nil,
      generation_id: nil,
      group_protocol: nil,
      leader_id: nil,
      member_id: nil,
      members: [],
      correlation_id: nil
    )

    @type t :: %__MODULE__{}
    import(Elixir.Kayrock.Deserialize)

    def(api_key) do
      :kpro_schema.api_key(:join_group)
    end

    def(api_vsn) do
      0
    end

    def(schema) do
      [
        error_code: :int16,
        generation_id: :int32,
        group_protocol: :string,
        leader_id: :string,
        member_id: :string,
        members: {:array, [member_id: :string, member_metadata: :bytes]}
      ]
    end

    def(deserialize(data)) do
      <<correlation_id::32-signed, rest::binary>> = data
      deserialize_field(:root, :error_code, %__MODULE__{correlation_id: correlation_id}, rest)
    end

    defp(deserialize_field(:root, :error_code, acc, data)) do
      {val, rest} = deserialize(:int16, data)
      deserialize_field(:root, :generation_id, Map.put(acc, :error_code, val), rest)
    end

    defp(deserialize_field(:root, :generation_id, acc, data)) do
      {val, rest} = deserialize(:int32, data)
      deserialize_field(:root, :group_protocol, Map.put(acc, :generation_id, val), rest)
    end

    defp(deserialize_field(:root, :group_protocol, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :leader_id, Map.put(acc, :group_protocol, val), rest)
    end

    defp(deserialize_field(:root, :leader_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :member_id, Map.put(acc, :leader_id, val), rest)
    end

    defp(deserialize_field(:root, :member_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :members, Map.put(acc, :member_id, val), rest)
    end

    defp(deserialize_field(:members, :member_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:members, :member_metadata, Map.put(acc, :member_id, val), rest)
    end

    defp(deserialize_field(:members, :member_metadata, acc, data)) do
      {val, rest} = deserialize(:bytes, data)
      deserialize_field(:members, nil, Map.put(acc, :member_metadata, val), rest)
    end

    defp(deserialize_field(:root, :members, acc, data)) do
      <<num_elements::32-signed, rest::binary>> = data

      {vals, rest} =
        if(num_elements > 0) do
          Enum.reduce(1..num_elements, {[], rest}, fn _ix, {acc, d} ->
            {val, r} = deserialize_field(:members, :member_id, %{}, d)
            {[val | acc], r}
          end)
        else
          {[], rest}
        end

      deserialize_field(:root, nil, Map.put(acc, :members, Enum.reverse(vals)), rest)
    end

    defp(deserialize_field(_, nil, acc, rest)) do
      {acc, rest}
    end
  end

  defmodule(V1.Response) do
    @moduledoc false
    _ = " THIS CODE IS GENERATED BY KAYROCK"

    defstruct(
      error_code: nil,
      generation_id: nil,
      group_protocol: nil,
      leader_id: nil,
      member_id: nil,
      members: [],
      correlation_id: nil
    )

    @type t :: %__MODULE__{}
    import(Elixir.Kayrock.Deserialize)

    def(api_key) do
      :kpro_schema.api_key(:join_group)
    end

    def(api_vsn) do
      1
    end

    def(schema) do
      [
        error_code: :int16,
        generation_id: :int32,
        group_protocol: :string,
        leader_id: :string,
        member_id: :string,
        members: {:array, [member_id: :string, member_metadata: :bytes]}
      ]
    end

    def(deserialize(data)) do
      <<correlation_id::32-signed, rest::binary>> = data
      deserialize_field(:root, :error_code, %__MODULE__{correlation_id: correlation_id}, rest)
    end

    defp(deserialize_field(:root, :error_code, acc, data)) do
      {val, rest} = deserialize(:int16, data)
      deserialize_field(:root, :generation_id, Map.put(acc, :error_code, val), rest)
    end

    defp(deserialize_field(:root, :generation_id, acc, data)) do
      {val, rest} = deserialize(:int32, data)
      deserialize_field(:root, :group_protocol, Map.put(acc, :generation_id, val), rest)
    end

    defp(deserialize_field(:root, :group_protocol, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :leader_id, Map.put(acc, :group_protocol, val), rest)
    end

    defp(deserialize_field(:root, :leader_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :member_id, Map.put(acc, :leader_id, val), rest)
    end

    defp(deserialize_field(:root, :member_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :members, Map.put(acc, :member_id, val), rest)
    end

    defp(deserialize_field(:members, :member_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:members, :member_metadata, Map.put(acc, :member_id, val), rest)
    end

    defp(deserialize_field(:members, :member_metadata, acc, data)) do
      {val, rest} = deserialize(:bytes, data)
      deserialize_field(:members, nil, Map.put(acc, :member_metadata, val), rest)
    end

    defp(deserialize_field(:root, :members, acc, data)) do
      <<num_elements::32-signed, rest::binary>> = data

      {vals, rest} =
        if(num_elements > 0) do
          Enum.reduce(1..num_elements, {[], rest}, fn _ix, {acc, d} ->
            {val, r} = deserialize_field(:members, :member_id, %{}, d)
            {[val | acc], r}
          end)
        else
          {[], rest}
        end

      deserialize_field(:root, nil, Map.put(acc, :members, Enum.reverse(vals)), rest)
    end

    defp(deserialize_field(_, nil, acc, rest)) do
      {acc, rest}
    end
  end

  defmodule(V2.Response) do
    @moduledoc false
    _ = " THIS CODE IS GENERATED BY KAYROCK"

    defstruct(
      throttle_time_ms: nil,
      error_code: nil,
      generation_id: nil,
      group_protocol: nil,
      leader_id: nil,
      member_id: nil,
      members: [],
      correlation_id: nil
    )

    @type t :: %__MODULE__{}
    import(Elixir.Kayrock.Deserialize)

    def(api_key) do
      :kpro_schema.api_key(:join_group)
    end

    def(api_vsn) do
      2
    end

    def(schema) do
      [
        throttle_time_ms: :int32,
        error_code: :int16,
        generation_id: :int32,
        group_protocol: :string,
        leader_id: :string,
        member_id: :string,
        members: {:array, [member_id: :string, member_metadata: :bytes]}
      ]
    end

    def(deserialize(data)) do
      <<correlation_id::32-signed, rest::binary>> = data

      deserialize_field(
        :root,
        :throttle_time_ms,
        %__MODULE__{correlation_id: correlation_id},
        rest
      )
    end

    defp(deserialize_field(:root, :throttle_time_ms, acc, data)) do
      {val, rest} = deserialize(:int32, data)
      deserialize_field(:root, :error_code, Map.put(acc, :throttle_time_ms, val), rest)
    end

    defp(deserialize_field(:root, :error_code, acc, data)) do
      {val, rest} = deserialize(:int16, data)
      deserialize_field(:root, :generation_id, Map.put(acc, :error_code, val), rest)
    end

    defp(deserialize_field(:root, :generation_id, acc, data)) do
      {val, rest} = deserialize(:int32, data)
      deserialize_field(:root, :group_protocol, Map.put(acc, :generation_id, val), rest)
    end

    defp(deserialize_field(:root, :group_protocol, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :leader_id, Map.put(acc, :group_protocol, val), rest)
    end

    defp(deserialize_field(:root, :leader_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :member_id, Map.put(acc, :leader_id, val), rest)
    end

    defp(deserialize_field(:root, :member_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:root, :members, Map.put(acc, :member_id, val), rest)
    end

    defp(deserialize_field(:members, :member_id, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:members, :member_metadata, Map.put(acc, :member_id, val), rest)
    end

    defp(deserialize_field(:members, :member_metadata, acc, data)) do
      {val, rest} = deserialize(:bytes, data)
      deserialize_field(:members, nil, Map.put(acc, :member_metadata, val), rest)
    end

    defp(deserialize_field(:root, :members, acc, data)) do
      <<num_elements::32-signed, rest::binary>> = data

      {vals, rest} =
        if(num_elements > 0) do
          Enum.reduce(1..num_elements, {[], rest}, fn _ix, {acc, d} ->
            {val, r} = deserialize_field(:members, :member_id, %{}, d)
            {[val | acc], r}
          end)
        else
          {[], rest}
        end

      deserialize_field(:root, nil, Map.put(acc, :members, Enum.reverse(vals)), rest)
    end

    defp(deserialize_field(_, nil, acc, rest)) do
      {acc, rest}
    end
  end

  def(deserialize(0, data)) do
    V0.Response.deserialize(data)
  end

  def(deserialize(1, data)) do
    V1.Response.deserialize(data)
  end

  def(deserialize(2, data)) do
    V2.Response.deserialize(data)
  end

  def(min_vsn) do
    0
  end

  def(max_vsn) do
    2
  end
end
