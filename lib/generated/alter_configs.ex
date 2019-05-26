defmodule(Kayrock.AlterConfigs) do
  @moduledoc false
  _ = " THIS CODE IS GENERATED BY KAYROCK"

  defmodule(V0.Request) do
    @moduledoc false
    _ = " THIS CODE IS GENERATED BY KAYROCK"
    defstruct(resources: [], validate_only: nil, correlation_id: nil, client_id: nil)
    import(Elixir.Kayrock.Serialize)
    @type t :: %__MODULE__{}
    def(api_key) do
      :kpro_schema.api_key(:alter_configs)
    end

    def(api_vsn) do
      0
    end

    def(response_deserializer) do
      &V0.Response.deserialize/1
    end

    def(schema) do
      [
        resources:
          {:array,
           [
             resource_type: :int8,
             resource_name: :string,
             config_entries: {:array, [config_name: :string, config_value: :nullable_string]}
           ]},
        validate_only: :boolean
      ]
    end

    def(serialize(%V0.Request{} = struct)) do
      [
        <<api_key()::16, api_vsn()::16, struct.correlation_id()::32,
          byte_size(struct.client_id())::16, struct.client_id()::binary>>,
        [
          case(Map.get(struct, :resources)) do
            [] ->
              <<-1::32-signed>>

            vals when is_list(vals) ->
              [
                <<length(vals)::32-signed>>,
                for(v <- vals) do
                  [
                    serialize(:int8, Map.get(v, :resource_type)),
                    serialize(:string, Map.get(v, :resource_name)),
                    case(Map.get(v, :config_entries)) do
                      [] ->
                        <<-1::32-signed>>

                      vals when is_list(vals) ->
                        [
                          <<length(vals)::32-signed>>,
                          for(v <- vals) do
                            [
                              serialize(:string, Map.get(v, :config_name)),
                              serialize(:nullable_string, Map.get(v, :config_value))
                            ]
                          end
                        ]
                    end
                  ]
                end
              ]
          end,
          serialize(:boolean, Map.get(struct, :validate_only))
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

  def(get_request_struct(0)) do
    %V0.Request{}
  end

  defmodule(V0.Response) do
    @moduledoc false
    _ = " THIS CODE IS GENERATED BY KAYROCK"
    defstruct(throttle_time_ms: nil, resources: [], correlation_id: nil)
    @type t :: %__MODULE__{}
    import(Elixir.Kayrock.Deserialize)

    def(api_key) do
      :kpro_schema.api_key(:alter_configs)
    end

    def(api_vsn) do
      0
    end

    def(schema) do
      [
        throttle_time_ms: :int32,
        resources:
          {:array,
           [
             error_code: :int16,
             error_message: :nullable_string,
             resource_type: :int8,
             resource_name: :string
           ]}
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
      deserialize_field(:root, :resources, Map.put(acc, :throttle_time_ms, val), rest)
    end

    defp(deserialize_field(:resources, :error_code, acc, data)) do
      {val, rest} = deserialize(:int16, data)
      deserialize_field(:resources, :error_message, Map.put(acc, :error_code, val), rest)
    end

    defp(deserialize_field(:resources, :error_message, acc, data)) do
      {val, rest} = deserialize(:nullable_string, data)
      deserialize_field(:resources, :resource_type, Map.put(acc, :error_message, val), rest)
    end

    defp(deserialize_field(:resources, :resource_type, acc, data)) do
      {val, rest} = deserialize(:int8, data)
      deserialize_field(:resources, :resource_name, Map.put(acc, :resource_type, val), rest)
    end

    defp(deserialize_field(:resources, :resource_name, acc, data)) do
      {val, rest} = deserialize(:string, data)
      deserialize_field(:resources, nil, Map.put(acc, :resource_name, val), rest)
    end

    defp(deserialize_field(:root, :resources, acc, data)) do
      <<num_elements::32-signed, rest::binary>> = data

      {vals, rest} =
        if(num_elements > 0) do
          Enum.reduce(1..num_elements, {[], rest}, fn _ix, {acc, d} ->
            {val, r} = deserialize_field(:resources, :error_code, %{}, d)
            {[val | acc], r}
          end)
        else
          {[], rest}
        end

      deserialize_field(:root, nil, Map.put(acc, :resources, Enum.reverse(vals)), rest)
    end

    defp(deserialize_field(_, nil, acc, rest)) do
      {acc, rest}
    end
  end

  def(deserialize(0, data)) do
    V0.Response.deserialize(data)
  end

  def(min_vsn) do
    0
  end

  def(max_vsn) do
    0
  end
end
